#!/usr/bin/env bash
set -e

echo "⏹ Stopping and uninstalling Lofi Panel Radio..."

pkill -f "lofi-indicator" 2>/dev/null || true

rm -f "$HOME/.local/bin/lofi-indicator"
rm -f "$HOME/.local/bin/lofi-panel"
rm -rf "$HOME/.local/share/lofi-panel"
rm -f "$HOME/.local/share/applications/lofi-indicator.desktop"
rm -f "$HOME/.config/autostart/lofi-indicator.desktop"

echo "✅ Uninstalled successfully."
