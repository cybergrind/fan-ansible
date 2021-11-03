.PHONY = publish lint


lint:
	ansible-lint

publish:
	ansible-galaxy role import --token=$(TOKEN) cybergrind fan-ansible
