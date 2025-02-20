#!/usr/bin/env bash
set -Eeuo pipefail

[ -e versions.json ]

sha512="$(wget -qO- 'https://cygwin.com/sha512.sum' | awk -v ret=1 '$2 == "setup-x86_64.exe" { print $1; ret = 0; exit ret } END { exit ret }')"
export sha512

echo >&2 "cygwin: $sha512"

jq -nS '
	{
		sha512: env.sha512,
		variants: [
			# https://hub.docker.com/r/microsoft/windowsservercore (minus EOL versions)
			"ltsc2022",
			"20H2",
			"1809",
			empty # trailing comma
		],
	}
' > versions.json
