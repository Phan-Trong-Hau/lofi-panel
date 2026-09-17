#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "☕ Installing Lofi Radio Suite..."

# Ensure target directories exist
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.local/share/lofi-panel/icons"
mkdir -p "$HOME/.local/share/applications"
mkdir -p "$HOME/.config/autostart"

# Copy all binaries
cp -f "$SCRIPT_DIR/bin/lofi"           "$HOME/.local/bin/lofi"
cp -f "$SCRIPT_DIR/bin/lofi-indicator" "$HOME/.local/bin/lofi-indicator"
cp -f "$SCRIPT_DIR/bin/lofi-panel"     "$HOME/.local/bin/lofi-panel"
chmod +x "$HOME/.local/bin/lofi" \
         "$HOME/.local/bin/lofi-indicator" \
         "$HOME/.local/bin/lofi-panel"

# Copy icons
cp -f "$SCRIPT_DIR/icons/"*.svg "$HOME/.local/share/lofi-panel/icons/"

# Copy desktop and autostart files
cp -f "$SCRIPT_DIR/desktop/lofi-indicator.desktop" "$HOME/.local/share/applications/"
cp -f "$SCRIPT_DIR/desktop/autostart.desktop"       "$HOME/.config/autostart/lofi-indicator.desktop"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Usage:"
echo "  lofi              → Interactive menu (Terminal / Widget / Panel)"
echo "  lofi stop         → Stop ALL lofi players at once"
echo "  lofi status       → See what's playing"
echo "  lofi help         → Full command reference"
