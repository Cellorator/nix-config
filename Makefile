.PHONY: all nixos home

all: nixos home

nixos:
	sudo nixos-rebuild switch --flake .

home:
	home-manager switch --flake .
