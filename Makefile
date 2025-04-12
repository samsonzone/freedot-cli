install:
	install -m 755 bin/freedot /usr/local/bin/freedot
	install -m 644 completions/freedot.bash /etc/bash_completion.d/freedot
	install -m 644 man/freedot.1 /usr/share/man/man1/freedot.1

uninstall:
	rm -f /usr/local/bin/freedot
	rm -f /etc/bash_completion.d/freedot
	rm -f /usr/share/man/man1/freedot.1
