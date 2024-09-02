#!/bin/bash

source "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")/lib/base.bash"
trap 'exit_handler "$?" "${0##*/}"' EXIT

function main() {
	if [[ -f "${mise_bin}" ]]; then
		update_mise "${mise_bin}"
	else
		install_mise "${mise_bin}"
	fi

	install_plugins "${mise_bin}"
}

function install_mise() {
	declare -r mise_bin="${1}"
	info "Installing mise"
	curl https://mise.run | sh
	eval "$("${mise_bin}" activate -C "$PROJECT_ROOT" bash --shims)"
}

function update_mise() {
	declare -r mise_bin="${1}"
	info "Updating mise"
	"${mise_bin}" self-update --yes || true # Ignore errors if mise is already up-to-date
}

function install_plugins() {
	declare -r mise_bin="${1}"
	info "Installing mise plugins"
	"${mise_bin}" install --yes
}

main "$@"
