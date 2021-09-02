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

print_info() { echo "${ICON_INFO}" "$@"; }
print_ok() { echo "${ICON_OK}" "$@"; }
print_new() { echo "${ICON_NEW}" "$@"; }
print_item()  { echo "${ICON_ITEM}" "$@"; }
print_list() { for item in "$@"; do print_item "$item"; done; }
print_error() { echo "${ICON_ERROR}" "$@"; }
print_fail() { echo "${ICON_FAIL}" "$@"; }

_last_start=''
echo_start() { if [ "$#" -eq 0 ]; then _last_start=$*; else _last_start="$* ${ICON_START}"; fi; echo "$_last_start"; }
echo_end() { printf "\n%s%s%s%s%s%s %s\n" "$(tput cuu 2)" "$(tput el)" "$(tput dim)" "${RESET}" "${_last_start}" "$(tput cub 2)" "${*:-"${ICON_UNKNOWN}"}"; }
echo_success() { echo_end "${ICON_OK}" "$@"; }
echo_fail() { echo_end "${ICON_FAIL}" "$@"; }

SOURCE=${BASH_SOURCE[0]:-${ZSH_SCRIPT}}
DIR="$(cd "$(dirname "${SOURCE}")" && pwd)"
FILE="${DIR}/$(basename "${SOURCE}")"
BASENAME="$(basename "${FILE}" .sh)"

trap die ERR

err() {  echo "$(tput setaf 1)[$(date +'%Y-%m-%dT%H:%M:%S%z')] $*" >&2; }

die() {
  if [ "$#" -eq 0 ]; then
    err "line ${LINENO}"
  else
    err "line ${LINENO}:" "$@"
  fi
#  exit 1
}

main() {
  echo ""
  echo "   This script is intented to be sourced to provide further semantic functions."
  echo "   Example: curl -sLS https://github.com/bkahlert/-/raw/main/semantics.sh | source"
  echo ""
  echo "${FG_BLACK} ▎${FG_RED} ▎${FG_GREEN} ▍${FG_YELLOW} ▌${FG_BLUE} ▋${FG_MAGENTA} ▊${FG_CYAN} ▉${FG_WHITE} █${RESET}"
  print_info
  print_info "$TERM"
  print_ok
  print_ok "success 123"
  print_new
  print_new "new 123"
  print_item
  print_item "item 123"
  print_list "item 1" "item 2" "item 3"
  print_error
  print_error "error 123"
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
}

if [ "${BASENAME}" = "semantics" ]; then
  main "$@"
fi
