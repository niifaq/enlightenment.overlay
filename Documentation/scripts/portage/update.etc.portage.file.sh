#!/bin/sh

ROOT="${ROOT:-/}"
overlay_dir=$(portageq get_repo_path "${ROOT}" "enlightenment-niifaq")
output="${overlay_dir}/Documentation/live-builds/package.keywords/enlightenment.live"
tmp=`mktemp`

cleanup() {
	rm -Rf "${tmp}"
}

trap cleanup TERM QUIT EXIT

(
	cd "${overlay_dir}";

	ls -1 */*/*-9999.ebuild | sed 's#/[^/]*$#-9999 **#; s/^/=/' | sort -u | \
		while read i; do
			grep -q "${i}" sets/enlightenment-broken || echo "${i}"
		done
) > "${tmp}"

diff -u "${output}" "${tmp}" | less

echo "Accept? Ctrl+C to abort"
read dummy

mv "${tmp}" "${output}"
