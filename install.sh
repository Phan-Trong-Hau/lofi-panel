#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "☕ Installing Lofi Panel Radio..."

# Ensure target directories exist
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.local/share/lofi-panel/icons"
mkdir -p "$HOME/.local/share/applications"
mkdir -p "$HOME/.config/autostart"

# Copy binaries
cp -f "$SCRIPT_DIR/bin/lofi-indicator" "$HOME/.local/bin/lofi-indicator"
cp -f "$SCRIPT_DIR/bin/lofi-panel" "$HOME/.local/bin/lofi-panel"
chmod +x "$HOME/.local/bin/lofi-indicator" "$HOME/.local/bin/lofi-panel"

# Copy icons
cp -f "$SCRIPT_DIR/icons/"*.svg "$HOME/.local/share/lofi-panel/icons/"

# Copy desktop and autostart files
cp -f "$SCRIPT_DIR/desktop/lofi-indicator.desktop" "$HOME/.local/share/applications/"
cp -f "$SCRIPT_DIR/desktop/autostart.desktop" "$HOME/.config/autostart/lofi-indicator.desktop"

echo "✅ Installation complete!"
echo "Run 'lofi-panel start' or click the cat icon on your top panel."
