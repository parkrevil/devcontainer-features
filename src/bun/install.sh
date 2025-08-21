#!/bin/bash
set -e

BUN_VERSION=${VERSION:-"1.2.20"}

echo "Installing Bun version $BUN_VERSION"

REMOTE_USER=${_REMOTE_USER:-"vscode"}
BUN_INSTALL_DIR="/home/$REMOTE_USER/.bun"

echo "Installing Bun for user: $REMOTE_USER"
echo "Installation directory: $BUN_INSTALL_DIR"

mkdir -p "$BUN_INSTALL_DIR"

export BUN_INSTALL="$BUN_INSTALL_DIR"

curl -fsSL https://bun.com/install | bash -s "bun-v${BUN_VERSION}"

chown -R "$REMOTE_USER:$REMOTE_USER" "$BUN_INSTALL_DIR"

echo "export BUN_INSTALL=\"$BUN_INSTALL_DIR\"" >> /etc/profile.d/bun.sh
echo "export PATH=\"\$BUN_INSTALL/bin:\$PATH\"" >> /etc/profile.d/bun.sh
chmod +x /etc/profile.d/bun.sh

echo "Bun version $(\"$BUN_INSTALL_DIR/bin/bun\" --version) installed for user $REMOTE_USER"
