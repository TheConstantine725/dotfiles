#! /usr/bin/bash

if ! (which uv)&>/dev/null; then
	echo 'Not Installed'
	if [[ ! -x "$HOME/.local/bin/uv" ]]; then
		curl -LsSf https://astral.sh/uv/install.sh | sh
	fi
fi

# echo "Welcome $USERNAME"
