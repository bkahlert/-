#!/usr/bin/env bash
set -o nounset
set -o pipefail
# set -o xtrace

export TERM=${TERM:-linux}

RESET=$(tput sgr0)

FG_BLACK="$(tput setaf 0)"
FG_RED="$(tput setaf 1)"
FG_GREEN="$(tput setaf 2)"
FG_YELLOW="$(tput setaf 3)"
FG_BLUE="$(tput setaf 4)"
FG_MAGENTA="$(tput setaf 5)"
FG_CYAN="$(tput setaf 6)"
FG_WHITE="$(tput setaf 7)"

ICON_INFO="${FG_WHITE}ℹ$(tput sgr0)"
ICON_OK="${FG_GREEN}✔$(tput sgr0)"
ICON_NEW="${FG_YELLOW}✱$(tput sgr0)"
ICON_ITEM="${FG_BLUE}▪$(tput sgr0)"
ICON_ERROR="${FG_RED}✘$(tput sgr0)"
ICON_FAIL="${FG_RED}✘$(tput sgr0)"
ICON_UNKNOWN="${FG_YELLOW}?$(tput sgr0)"
ICON_START="${FG_CYAN}…$(tput sgr0)"

echo_info() { echo "${ICON_INFO}" "$@"; }
echo_ok() { echo "${ICON_OK}" "$@"; }
echo_new() { echo "${ICON_NEW}" "$@"; }
echo_item()  { echo "${ICON_ITEM}" "$@"; }
echo_list() { for item in "$@"; do echo_item "$item"; done; }
echo_error() { echo "${ICON_ERROR}" "$@"; }
echo_fail() { echo "${ICON_FAIL}" "$@"; }

__start_args=""
echo_start() { __start_args=$*; echo "$@" "${ICON_START}"; }
echo_end() {
  [ "${__start_args}" = "" ] && return
  if [ -z "${__INTELLIJ_COMMAND_HISTFILE__:-}" ]; then
    # override previous line with current argument attached
    printf "\n%s%s%s%s%s %s\n" "$(tput cuu 2)" "$(tput dim)" "${__start_args}" "${RESET}" "$(tput el)" "${*:-"${ICON_UNKNOWN}"}"
  else
    # in IDE just print on next line
    printf "%s\n" "${*:-"${ICON_UNKNOWN}"}"
  fi
  __start_args=""
}
echo_success() { echo_end "${ICON_OK}" "$@"; }
echo_fail() { echo_end "${ICON_FAIL}" "$@"; }


prompt_continue() {
  local tty_settings
  local aborted; aborted=0
  local answer

  [ $# -ne 0 ] && echo "${FG_YELLOW}$*${RESET}"
  printf "%sDo you want to continue? [Y/n]%s " "${FG_YELLOW}" "${RESET}"
  tty_settings=$(stty -g)
  trap 'stty "'"${tty_settings}"'"' EXIT
  trap "aborted=1" INT TERM
  stty raw isig -echo || true
  answer=$(head -c 1) || true
  stty "${tty_settings}" || true
  trap - INT TERM EXIT

  if echo "${answer}" | grep -iq "^n" || [[ "${answer}" =~  $'\x1b' ]] || [[ $aborted == 1 ]]; then
    echo "${ICON_FAIL} Aborting..."
    exit 1
  else
    echo "${ICON_OK} Continuing..."
  fi
}


SOURCE=${BASH_SOURCE[0]:-${ZSH_SCRIPT}}
DIR="$(cd "$(dirname "${SOURCE}")" && pwd)"
FILE="${DIR}/$(basename "${SOURCE}")"
BASENAME="$(basename "${FILE}" .sh)"

trap die ERR

err() { echo "$(tput setaf 1)[$(date +'%Y-%m-%dT%H:%M:%S%z')] $*" >&2; }

die() {
  if [ ! "${__start_args}" = "" ]; then
    echo_fail "$@"
  elif [ "$#" -eq 0 ]; then
    err "line ${LINENO}"
  else
    err "line ${LINENO}:" "$@"
  fi
  exit 1
}

main() {
  echo ""
  echo "   This script is intented to be sourced to provide further semantic functions."
  echo "   Example: curl -sLS https://github.com/bkahlert/-/raw/main/semantics.sh | source"
  echo ""
  echo "${FG_BLACK} ▎${FG_RED} ▎${FG_GREEN} ▍${FG_YELLOW} ▌${FG_BLUE} ▋${FG_MAGENTA} ▊${FG_CYAN} ▉${FG_WHITE} █${RESET}"
  echo_info
  echo_info "$TERM"
  echo_ok
  echo_ok "success 123"
  echo_new
  echo_new "new 123"
  echo_item
  echo_item "item 123"
  echo_list "item 1" "item 2" "item 3"
  echo_error
  echo_error "error 123"
  echo_start
  echo_end
  echo_start "Succeeding with no result"
  echo_success
  echo_start "Failing with no result"
  echo_fail
  echo_start "Succeeding with result"
  echo_success 42
  echo_start "Failing with result"
  echo_fail 42
  prompt_continue "This is an example prompt. Not continuing will exit with code 1."
}

if [ "${BASENAME}" = "semantics" ]; then
  main "$@"
fi

source ./.env &>/dev/null || true
