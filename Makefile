git:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew install git
	git config --global user.name "${NAME}"
	git config --global user.email "${EMAIL}"
	ssh-keygen -t ed25519 -C "${EMAIL}"

	eval "$(ssh-agent -s)"
	touch ~/.ssh/config
	cat <<EOF > ~/.ssh/config
	Host github.com
  		AddKeysToAgent yes
  		IdentityFile ~/.ssh/id_ed25519
		EOF
	ssh-add ~/.ssh/id_ed25519



