Install layman:
	If you still hasn't it:
	USE="git" emerge layman

Add overlay:

# layman -o \
	'http://git.niifaq.ru/enlightenment-niifaq/plain/Documentation/layman/enlightenment-niifaq.xml' \
	-f -k -a enlightenment-niifaq

If this is your first overlay:

# echo 'source /var/lib/layman/make.conf' >> /etc/make.conf

Installation:

Use one of the sets, that are documented into SETS file

Hints:
	Usage of portage-2.2* recommended
	Always use --keep-going when rebuilding if you don't want to end up
		with broken wm


# vim: ft=text textwidth=78
