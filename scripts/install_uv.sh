#! /bin/bash

if ! (which uv)&>/dev/null; then
	echo 'uv is not INSTALLED'
	if [[ ! -x "$HOME/.local/bin/uv" ]]; then
		echo 'Fetching it with curl'
		curl -LsSf https://astral.sh/uv/install.sh | sh
	fi
fi

if ! (which rustup)&>/dev/null; then
	echo 'rust is not installed'
	if [[ ! -x "$HOME/.cargo/bin/rustup" ]]; then
		echo "Fetching rustup with curl"
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	fi
fi

# echo "Welcome $USERNAME"
