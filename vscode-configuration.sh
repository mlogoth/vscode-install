#!/bin/bash

# Function to install a VS Code extension
install_extension() {
    local extension=$1
    if code --list-extensions | grep -q "$extension"; then
        echo "Extension $extension is already installed."
    else
        code --install-extension "$extension"
        if [ $? -eq 0 ]; then
            echo "Successfully installed $extension."
        else
            echo "Failed to install $extension."
        fi
    fi
}

# Check if VS Code is installed
if ! command -v code &> /dev/null; then
    echo "VS Code is not installed. Please install it first."
    exit 1
fi

# List of extensions to install
extensions=(
    ms-python.python
    ms-python.black-formatter
    ms-vscode.cpptools
    ms-iot.vscode-ros
    ms-vscode.cmake-tools
    twxs.cmake
    ms-azuretools.vscode-docker
    ms-vscode.remote-containers
    ms-vscode.remote-ssh
    ms-vscode.remote-explorer
    ms-vscode.github
    eamodio.gitlens
    github.vscode-github-actions
    github.copilot
    github.copilot-chat
    github.vscode-pull-request-github
    redhat.vscode-yaml
    davidanson.vscode-markdownlint
    streetsidesoftware.code-spell-checker
    foxundermoon.shell-format
    timonwong.shellcheck
    ms-vscode.vscode-typescript-tslint-plugin
    ms-vscode.makefile-tools
    ms-vscode.cpptools-extension-pack
    ms-vscode.hexeditor
    gruntfuggly.todo-tree
    tamasfe.even-better-toml
    oderwat.indent-rainbow
    ms-vscode-remote.vscode-remote-extensionpack
    ms-vscode.pylance
    donjayamanne.githistory
    zhuangtongfa.material-theme
    esbenp.prettier-vscode
    shardulm94.trailing-spaces
    ritwickdey.liveserver
    vscode-icons-team.vscode-icons
    pkief.material-icon-theme
    dbaeumer.vscode-eslint
    aaron-bond.better-comments
    njpwerner.autodocstring
    mhutchie.git-graph
    webfreak.debug
    humao.rest-client
    mechatroner.rainbow-csv
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
)

# Install each extension
for extension in "${extensions[@]}"; do
    install_extension "$extension"
done