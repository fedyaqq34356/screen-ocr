# screen-ocr

Select a region on your screen and instantly copy the recognized text to clipboard.

## Dependencies

- [grim](https://github.com/emersion/grim) — screenshot tool for Wayland
- [slurp](https://github.com/emersion/slurp) — region selection
- [tesseract](https://github.com/tesseract-ocr/tesseract) — OCR engine
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) — clipboard tool for Wayland

## Installation

### Arch Linux

```bash
sudo pacman -S grim slurp tesseract tesseract-data-rus tesseract-data-ukr tesseract-data-eng wl-clipboard
```

### Ubuntu / Debian

```bash
sudo apt install grim slurp tesseract-ocr tesseract-ocr-rus tesseract-ocr-ukr wl-clipboard
```

### Fedora

```bash
sudo dnf install grim slurp tesseract tesseract-langpack-rus tesseract-langpack-ukr wl-clipboard
```

### openSUSE

```bash
sudo zypper install grim slurp tesseract tesseract-ocr-traineddata-russian wl-clipboard
```

---

```bash
git clone https://github.com/YOUR_USERNAME/screen-ocr
cd screen-ocr
chmod +x ocr.sh
```

## Usage

```bash
./ocr.sh
```

Select a region with your mouse — text is copied to clipboard automatically.

## Keybind (Hyprland)

Add to `~/.config/hypr/custom/keybinds.conf`:

```
bind = Super, F1, exec, /path/to/ocr.sh
```

## Supported Languages

- Russian
- Ukrainian
- English

---

Made with love ❤️

If you find this useful, please consider giving it a star!
