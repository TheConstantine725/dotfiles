#! /usr/bin/bash

if ! (which uv)&>/dev/null; then
	echo 'uv is not INSTALLED'
	if [[ ! -x "$HOME/.local/bin/uv" ]]; then
		echo 'Fetching it with curl'
		curl -LsSf https://astral.sh/uv/install.sh | sh
	fi
fi

# echo "Welcome $USERNAME"
