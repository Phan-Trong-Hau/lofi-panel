# ☕ Lofi Panel Radio

A lightweight, zero-disk-space Lofi & Ambient radio indicator that lives directly inside your Linux Top Panel (COSMIC Desktop / GNOME / FreeDesktop SNI).

Features an **animated dancing pixel cat** wearing headphones, real-time sound wave equalizer, independent volume control, and 15 diverse curated 24/7 internet radio stations.

---

## ✨ Features

- **Top Panel Cat Mascot**: Animated cat bobs its head and dances to the beat right on your top panel. Slumbers (`z Z Z`) when paused.
- **Interactive Mini Control UI**: Left-click the panel cat to open a sleek popover window with big playback buttons, live equalizer, and station selector.
- **Independent Volume Control**: Adjust the radio's background volume (0% - 100%) without altering your master system output volume.
- **0 MB Disk Space**: Streams 24/7 radio channels entirely in memory via GStreamer (`playbin`). No audio files are downloaded to disk.
- **15 Curated Stations**:
  1. ☕ **Lofi Hip Hop**: Relaxing study beats & chilled vinyl vibes
  2. 🌧️ **Rainy Cafe**: Cozy piano melodies with soft rain ambiance
  3. 🌿 **Groove Salad**: SomaFM's acclaimed downtempo ambient chillout
  4. 🌆 **Nightwave Plaza**: Japanese City Pop & Vaporwave aesthetic
  5. 🌌 **Deep Drone Zone**: Atmospheric deep space soundscapes for coding
  6. 🎷 **Spy Jazz Lounge**: Vintage secret agent vibes & mellow Bossa Nova
  7. 🎹 **Lush Mellow**: Sensuous electronic sounds with soft vocals
  8. 🕹️ **DEF CON Cyber**: Hacker chiptunes & 8-bit electronic beats
  9. 🪐 **Vaporwaves**: Nostalgic 80s synth & dreamy chillwave
  10. 🏮 **Chinese Hits**: C-Pop hits & Mandarin melodious tunes
  11. 🎹 **Solo Piano**: Whisperings peaceful and emotional acoustic solo piano
  12. 🇻🇳 **Vietnam Hits**: Vietnamese national music, popular melodies & chill (VOV3)
  13. 🎋 **Flute & Strings**: Traditional Asian bamboo flute, guzheng, pipa & strings
  14. 📻 **V-Pop Radio**: Contemporary Vietnamese pop hits & chill tracks
  15. 🎐 **Zen Flute**: Relaxing Japanese shakuhachi meditation & bamboo flute
- **Auto-Start**: Automatically launches on system boot/login.

---

## 🎮 Controls

| Action | Function |
|---|---|
| **Left-click panel icon** | Toggle the interactive Mini Control UI |
| **Mouse scroll on panel icon** | Quickly switch to Next / Previous station |
| **Middle-click panel icon** | Skip to next station |
| **Right-click panel icon** | Quick context menu |

### CLI Commands

```bash
lofi-panel ui      # Toggle the control window
lofi-panel toggle  # Toggle Play / Pause
lofi-panel next    # Skip to next station
lofi-panel stop    # Quit player
lofi-panel status  # Check player status
```

---

## 🚀 Installation

```bash
git clone git@github.com:Phan-Trong-Hau/lofi-panel.git
cd lofi-panel
./install.sh
```

To start immediately:
```bash
lofi-panel start
```

### Uninstallation

```bash
./uninstall.sh
```

---

## 🛠️ Requirements

- Linux with GStreamer (`gstreamer1.0-plugins-base`, `gstreamer1.0-plugins-good`)
- Python 3 with `PyGObject` (GTK 3) and `dasbus` / `dbus-python`
- Tested and running natively on **Pop!_OS 24.04 (COSMIC Desktop)**.
