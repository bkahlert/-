#!/bin/sh
base64 --decode <<<'QmFja2dyb3VuZDogfCBTdHlsZTogICAgICB8IFRleHQgQ29sb3JzOgotLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgICAgICAgIHwgTm9ybWFsICAgICAgfCAbWzBtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQogICAgICAgICAgICB8IEJvbGQgICAgICAgIHwgG1sxbU5vbmUgG1szMG1CbGFjaxtbMzltIBtbMzFtUmVkG1szOW0gG1szMm1HcmVlbhtbMzltIBtbMzNtWWVsbG93G1szOW0gG1szNG1CbHVlG1szOW0gG1szNW1NYWdlbnRhG1szOW0gG1szNm1DeWFuG1szOW0gG1szN21XaGl0ZRtbMzltIBtbMG0KICAgICAgICAgICAgfCBGYWludCAgICAgICB8IBtbMm1Ob25lIBtbMzBtQmxhY2sbWzM5bSAbWzMxbVJlZBtbMzltIBtbMzJtR3JlZW4bWzM5bSAbWzMzbVllbGxvdxtbMzltIBtbMzRtQmx1ZRtbMzltIBtbMzVtTWFnZW50YRtbMzltIBtbMzZtQ3lhbhtbMzltIBtbMzdtV2hpdGUbWzM5bSAbWzBtCiAgICAgICAgICAgIHwgSXRhbGljICAgICAgfCAbWzNtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQogICAgICAgICAgICB8IFVuZGVybGluZSAgIHwgG1s0bU5vbmUgG1szMG1CbGFjaxtbMzltIBtbMzFtUmVkG1szOW0gG1szMm1HcmVlbhtbMzltIBtbMzNtWWVsbG93G1szOW0gG1szNG1CbHVlG1szOW0gG1szNW1NYWdlbnRhG1szOW0gG1szNm1DeWFuG1szOW0gG1szN21XaGl0ZRtbMzltIBtbMG0KICAgICAgICAgICAgfCBCbGlua19TbG93ICB8IBtbNW1Ob25lIBtbMzBtQmxhY2sbWzM5bSAbWzMxbVJlZBtbMzltIBtbMzJtR3JlZW4bWzM5bSAbWzMzbVllbGxvdxtbMzltIBtbMzRtQmx1ZRtbMzltIBtbMzVtTWFnZW50YRtbMzltIBtbMzZtQ3lhbhtbMzltIBtbMzdtV2hpdGUbWzM5bSAbWzBtCiAgICAgICAgICAgIHwgQmxpbmtfUmFwaWQgfCAbWzZtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQogICAgICAgICAgICB8IEludmVyc2UgICAgIHwgG1s3bU5vbmUgG1szMG1CbGFjaxtbMzltIBtbMzFtUmVkG1szOW0gG1szMm1HcmVlbhtbMzltIBtbMzNtWWVsbG93G1szOW0gG1szNG1CbHVlG1szOW0gG1szNW1NYWdlbnRhG1szOW0gG1szNm1DeWFuG1szOW0gG1szN21XaGl0ZRtbMzltIBtbMG0KICAgICAgICAgICAgfCBDb25jZWFsICAgICB8IBtbOG1Ob25lIBtbMzBtQmxhY2sbWzM5bSAbWzMxbVJlZBtbMzltIBtbMzJtR3JlZW4bWzM5bSAbWzMzbVllbGxvdxtbMzltIBtbMzRtQmx1ZRtbMzltIBtbMzVtTWFnZW50YRtbMzltIBtbMzZtQ3lhbhtbMzltIBtbMzdtV2hpdGUbWzM5bSAbWzBtCiAgICAgICAgICAgIHwgQ3Jvc3NlZF9PdXQgfCAbWzltTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBCbGFjayAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDBtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBSZWQgICAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDFtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBHcmVlbiAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDJtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBZZWxsb3cgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDNtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBCbHVlICAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDRtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBNYWdlbnRhICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDVtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBDeWFuICAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDZtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQpCRyBXaGl0ZSAgICB8IE5vcm1hbCAgICAgIHwgG1swbRtbNDdtTm9uZSAbWzMwbUJsYWNrG1szOW0gG1szMW1SZWQbWzM5bSAbWzMybUdyZWVuG1szOW0gG1szM21ZZWxsb3cbWzM5bSAbWzM0bUJsdWUbWzM5bSAbWzM1bU1hZ2VudGEbWzM5bSAbWzM2bUN5YW4bWzM5bSAbWzM3bVdoaXRlG1szOW0gG1swbQo='
