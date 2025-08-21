#!/bin/bash
set -e

ANGULAR_VERSION=${VERSION:-"^20"}
REMOTE_USER=${_REMOTE_USER:-"vscode"}

echo "Installing Angular CLI version $ANGULAR_VERSION using Bun"

source /etc/profile.d/bun.sh

echo "Using BUN_INSTALL: $BUN_INSTALL"

"$BUN_INSTALL/bin/bun" install -g @angular/cli@"$ANGULAR_VERSION"

chown "$REMOTE_USER:$REMOTE_USER" "$BUN_INSTALL/bin/ng"
chown -R "$REMOTE_USER:$REMOTE_USER" "$BUN_INSTALL/install/global/node_modules/@angular"
chown -R "$REMOTE_USER:$REMOTE_USER" "$BUN_INSTALL/install/global/node_modules"
chown -R "$REMOTE_USER:$REMOTE_USER" "$BUN_INSTALL/bin"

echo "Angular CLI installed successfully"
echo "ng version: $(ng version)"
