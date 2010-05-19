#!/bin/sh

PORTDIR="$(portageq portdir)"
REPO_PATH="$(portageq get_repo_path / enlightenment-niifaq)"

portage_updates_dir="${PORTDIR}/profiles/updates"

if ! [[ -w "${portage_updates_dir}" ]]; then
	echo "You need to have access to PORTDIR"
fi

if [[ -z "${REPO_PATH}" ]]; then
	echo "enlightenment-niifaq overlay not found"
	echo "You should enable it in your make.conf"
fi

for update in "${REPO_PATH}"/Documentation/updates/*; do 
	cat "${update}" >> "${portage_updates_dir}/$(basename ${update})"
done

emerge --metadata
