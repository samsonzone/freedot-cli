OS := $(shell uname)

ifeq ($(OS),Darwin)
    BASH_COMPLETION_DIR := /opt/homebrew/etc/bash_completion.d
    ZSH_COMPLETION_DIR := /usr/local/share/zsh/site-functions
    MAN_DIR := /usr/local/share/man/man1
else
    BASH_COMPLETION_DIR := /etc/bash_completion.d
    ZSH_COMPLETION_DIR := /usr/share/zsh/site-functions
    MAN_DIR := /usr/share/man/man1
endif

install:
	install -m 755 bin/freedot /usr/local/bin/freedot
	install -m 644 completions/freedot.bash $(BASH_COMPLETION_DIR)/freedot
	install -m 644 completions/_freedot $(ZSH_COMPLETION_DIR)/_freedot
	install -m 644 man/freedot.1 $(MAN_DIR)/freedot.1

uninstall:
	rm -f /usr/local/bin/freedot
	rm -f $(BASH_COMPLETION_DIR)/freedot
	rm -f $(ZSH_COMPLETION_DIR)/_freedot
	rm -f $(MAN_DIR)/freedot.1