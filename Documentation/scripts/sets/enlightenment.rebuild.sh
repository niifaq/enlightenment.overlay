ROOT=$(portageq envvar ROOT);
REPO_ROOT=$(portageq get_repo_path "${ROOT}" enlightenment-niifaq)
installed=$(portageq match "${ROOT}" "");

for ebuild in $(find "${REPO_ROOT}" -name "*-9999.ebuild" | sed -r "s|^.*/([[:alnum:]_\.\-]+)/[^\/]+/([[:alnum:]_\.\-]+)\.ebuild|\1/\2|" ); do
	echo "${installed}" | grep --color=never "${ebuild}" | sed 's/^/=/';
done
