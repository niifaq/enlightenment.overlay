#!/bin/sh

ROOT="$(portageq envvar ROOT)"
REPO_ROOT="$(portageq get_repo_path ${ROOT} enlightenment-niifaq)"

BROKEN="${REPO_ROOT}/sets/enlightenment-broken"

for ebuild in $(find "${REPO_ROOT}" -name "*-9999.ebuild" | sed -r "s|^.*/([[:alnum:]_\.\-]+)/[^\/]+/([[:alnum:]_\.\-]+)-9999\.ebuild|\1/\2|"); do
	grep -q "${ebuild}" "${BROKEN}" && continue;

	test -f /etc/portage/enlightenment.ignore &&
		grep -q "^${ebuild}$" /etc/portage/enlightenment.ignore &&
		continue;

	echo ${ebuild};
done;
