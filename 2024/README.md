# MacBook Pro M4 Max (14-inch, 2024) Setup Guide

A comprehensive guide for setting up a new MacBook Pro for development and creative work.

## System Specifications

**14-inch MacBook Pro - Space Black**
- Apple M4 Max chip with 16‑core CPU, 40‑core GPU, 16‑core Neural Engine
- 48GB unified memory
- 1TB SSD storage
- Three Thunderbolt 5 ports, HDMI port, SDXC card slot, headphone jack, MagSafe 3 port

## Pre-Setup Phase

### Apple Care
- Purchase AppleCare within 90 days (recommended immediately)
- $99/year subscription model available
- Activate immediately: `Apple > About This Mac > More Info...`
- Verify coverage status

### Security & Privacy Initial Setup
- Enable FileVault disk encryption
- Configure Touch ID (add multiple fingerprints)
- Review and configure Privacy settings
- Set up Find My Mac
- Create a firmware password

### Before You Begin Checklist
- [ ] Backup old machine (if applicable)
- [ ] Library > Fonts
- [ ] Have Apple ID credentials ready
- [ ] Prepare external drive for Time Machine
- [ ] Download essential installation files
- [ ] Have license keys available
- [ ] Enable two-factor authentication for Apple ID
- [ ] List of required applications and tools

## Essential System Setup

### macOS Updates
1. Check `System Settings > Software Updates`
2. Install all available updates
3. Restart if required

### Time Machine Configuration
- Connect external drive
- Set up Time Machine backups
- Configure backup schedule

### System Settings

#### Apple ID & iCloud
- Sign in to Apple ID
- Configure iCloud services
- Enable Find My Mac
- Set up iCloud Drive

#### Display & Appearance
- `System Settings > Appearance`
    - Set appearance to Auto
- Configure display scaling
- Arrange multiple displays (if applicable)

### Lock Screen
- `System Settings > Lock Screen`
  - Turn off display after 10 minutes

#### Input Devices
**Mouse Settings** (`System Settings > Mouse`)
- Adjust tracking speed
- Configure scroll speed
- Set secondary click

**Trackpad Settings** (`System Settings > Trackpad > Scroll & Zoom`)
- Disable natural scroll direction (optional)
- Enable gestures
- Adjust tracking speed

**Dock Customization** (`System Settings > Desktop & Dock`)
- Adjust dock size
- Enable magnification
- Remove unused icons
- Show recent apps (turn off)
- Turn off automatically arrange spaces

### Finder

I like to customize Finder starting with adding common folders to my favorites. If you're new to macOS It's helpful to get
used to moving around and customizing Finder. 

- Right-click on the title bar and click `Customize Toolbar`.
- View > Show Path Bar
- `Finder > Settings`
  - Remove Tags (I don't use them)
  - Customize Sidebar
  - Advanced (Show filename extensions + Search Current Folder)

**Keyboard Shortcuts**
* Cmd + Shift + H (takes you home)
* Cmd + Shift+ .  (show hidden files and folders)
* Cmd + Shift + G → Go to folder (you can paste any path)
* Cmd + Shift + D → Desktop
* Cmd + Shift + O → Documents
* Cmd + [ → Go back
* Cmd + ] → Go forward
* Cmd + Up → Parent folder
* Space bar → Quick Look preview

**View Customization**
* Cmd + 1 → Icon view
* Cmd + 2 → List view
* Cmd + 3 → Column view
* Cmd + 4 → Gallery view
* Cmd + J → View options for current folder
* Right-click column header → Customize visible columns

**Smart Organization**
* Create Smart Folders (File → New Smart Folder)
    - Filter by date, type, name, tags, etc.
    - Save commonly used searches
* Use tags (Cmd + T) to color-code files
* Add tags to Finder sidebar for quick filtering

**Power User Tips**
* Hold Option while dragging to copy instead of move
* Hold Cmd while dragging to move even across volumes
* Right-click Finder title bar to see path
* Type first few letters to jump to files
* Use Path Bar (View → Show Path Bar)
* Enable Status Bar (View → Show Status Bar) to see free space

**Favorites & Sidebar**
* Drag any folder to sidebar under Favorites
* Rearrange sidebar items by dragging
* Remove unused items to reduce clutter
* Create folder aliases (Cmd + L) for quick access
* Group frequently accessed folders together

## Hardware & Peripherals Setup

### Desk Setup

**Current peripherals:**
- [Dell S2722QC Monitor - 27 inch 4K](https://amzn.to/48PG2jt)
- [iVANKY FusionDock MacBook Docking Station](https://amzn.to/4hCM0Zb)
- [Apple Magic Keybaord](https://amzn.to/3quWxh0)
- [Logitech MX Master 3 Mouse](https://amzn.to/3F2gLCy)
- [Shure MV7 USB Microphone](https://amzn.to/3AyvBUX)
- [Elgato Wave Mic Arm ](https://amzn.to/3YChkys)
- [Sony A6100 DSLR Camera](https://amzn.to/3Dk78P2)
- [Elgato Cam Link 4k](https://amzn.to/3c4fpea)
- [Elgato Key Light * 2](https://amzn.to/3HdpnIm)
- [Elgato Stream Deck +, Audio Mixer](https://amzn.to/3UQICzZ)
- [Apple AirPods Pro](https://amzn.to/3qvw3vO)
- [Wyze Wireless Noise Cancelling Headphones](https://amzn.to/3F5Utjp)

## Development Environment

### Command Line Tools

Anything I can install using HomeBrew I will. Before you install HomeBrew though you need to install the Xcode command-line utilities. Open up a new terminal and type the following command. Even if you installed Xcode you still need to install these now as they moved them out of the standard installation. **Note** - I was not able to do this and the command line tools were installed with Homebrew.

```bash
# Install Xcode Command Line Tools
xcode-select --install
```

The command-line Tools Package is a small self-contained package available for download separately from Xcode and that allows you to do command-line development in OS X. It consists of two components: OS X SDK and command-line tools such as Clang, which are installed in `/usr/bin`.

As I said earlier I use HomeBrew to install anything that it can install. If you normally use brew to install something like google-chrome you know that you have to then drag it into the applications folder. If you use cask it will not only download the package but also move it into the applications folder for you.

[HomeBrew Website](https://brew.sh/)

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Terminal Setup

The default shell in macOS is now zsh. All this means is that the user account shell will default to zsh. This doesn't mean you can't use bash or whatever shell you want.

```
echo $SHELL -> /bin/zsh 
```

#### iTerm2 Installation

I switched from Terminal to iTerm2 a long time ago and haven't looked back. If you want to find out about some of the features & configurations it gives you please [check out their website](https://www.iterm2.com/features.html).

```bash
brew install --cask iterm2
```

**Recommended Customization:**
- [Color Schemes](https://iterm2colorschemes.com/): GruvBoxDark, Nord, Snazzy
- Fonts: Monaco, MesloLGS NF, Jetbrains Mono, Hack

### Oh My Zsh Setup

If you're going to use ZSH you must start by installing [oh-my-zsh](https://ohmyz.sh/). Oh My Zsh is a popular framework for managing your Zsh configuration. Here are its main benefits:

**Core Features:**
- Theme support for prettier, more informative prompts
- Hundreds of [built-in plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/plugins) for:
    - Git (better git shortcuts and status info)
    - Package managers (npm, pip, etc.)
    - Cloud platforms (AWS, Docker, etc.)
- Smart auto-completion
- Command history with search
- Directory navigation shortcuts

**Common Useful Features:**
```
# Directory Navigation
cd ..    → moves up one directory
...      → moves up two directories
....     → moves up three directories
take dir → creates and moves into directory

# Git Shortcuts (with git plugin)
gst      → git status
ga       → git add
gcm      → git commit -m
gp       → git push
gco      → git checkout

# History
history  → show command history
ctrl + r → search history interactively
```

**Popular Themes:**
- robbyrussell (default)
- agnoster (shows git status, python env)
- powerlevel10k (highly customizable, fast) - `ZSH_THEME="powerlevel10k/powerlevel10k`


**Installation**
```
# Install via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Or via wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Configuration is in ~/.zshrc:**
- Change themes
- Add/remove plugins
- Set aliases
- Customize other settings

**Some Plugins to consider:**
```
plugins=(
  git
  docker
  docker-compose
  node
  npm
  nvm
  vscode
  brew
  httpie
  spring
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

### Development Tools


```bash
# Essential development tools
brew install --cask google-chrome
brew install git
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask jetbrains-toolbox
brew install tree
brew install bat
brew install httpie
```

```bash
# Additional CLI tools
brew install fzf           # Fuzzy finder
brew install ripgrep      # Better grep
brew install tldr        # Simplified man pages
brew install gh          # GitHub CLI
brew install jq          # JSON processor
brew install htop        # Process viewer
brew install ncdu        # Disk usage analyzer
```

```bash
# Cloud platform CLIs
brew install awscli
brew install azure-cli
brew install google-cloud-sdk
```

### Node & NPM Setup

If you're going to install Node I think the best way to do so is by using [Node Version Manager (NVM)](https://github.com/creationix/nvm). This to me has a few advantages over installing it from brew or even directly downloading it from their website.

* You can install multiple versions of Node
    * You can set a default version
    * You can switch between these versions easily
* Installs in your home directory
    * You don't need special privileges
    * No more sudo when installing packages globally

```bash
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install latest stable Node
nvm install stable
```

### Git Configuration

There is usually a default install of git but we used brew to install the latest earlier. Now that we are on the latest version of git we need to do a little configuration. If you run the following commands they will be written to `.gitconfig`:


```bash
git config --global user.email "your.email@example.com"
git config --global user.name "Your Name"

# Generate SSH key
ssh-keygen -t ed25519 -C "your.email@example.com"
```

### SDKMan

This is one of my favorite version managers because I use a lot of the Software Development Kits (SDKs) it manages. If you haven't heard of [SDKMan check them out here](https://sdkman.io/install). This is a list of SDKs I manage using SDKMan.

* Java
* Kotlin
* Gradle
* Maven
* Spring Boot

```bash
curl -s "https://get.sdkman.io" | zsh
```

## Applications & Tools

This is the rest of the applications and tools that I install:

### Misc Applications

```bash
brew install --cask 1password # Will I still use this now that Apple has this built in?
brew install --cask notion
brew install --cask notion-calendar
brew install --cask adobe-creative-cloud # Photoshop/Premiere Pro/After Effects/XD
brew install --cask figma
brew install --cask zoom
brew install --cask cleanmymac
brew install --cask screen-studio
brew install --cask elgato-control-center
brew install --cask elgato-stream-deck
brew install --cask ecamm-live
brew install --cask expressvpn
```

### Chrome Extensions
- [Window Resizer](https://chrome.google.com/webstore/detail/window-resizer/kkelicaakdanhinjdeammmilcgefonfh?hl=en)
- [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh?hl=en)
- [Vue DevTools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd?hl=en)
- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en)
- [1Password](https://chromewebstore.google.com/detail/1password-%E2%80%93-password-mana/aeblfdkhhhdcdjpifhhbdiojplfjncoa)

### Raycast

[Raycast](https://www.raycast.com/) is a powerful Spotlight replacement that enhances productivity with features like:

- Quick application launcher
- Clipboard history
- Snippets management
- Window management
- Extensions ecosystem

**Installation:**

```bash
brew install --cask raycast
```

**Essential Settings:**
- Set hotkey (default is ⌘ + Space, you might want to change Spotlight's hotkey first)
- Enable clipboard history
- Configure window management shortcuts
- Install recommended extensions:
  - Calculator
  - Calendar
  - Color Picker
  - GitHub
  - Window Management

### Apple Intelligence

Coming Soon!

## Cleanup & Optimization

### System Cleanup Tools

- Install AppCleaner for thorough app removal
- Consider CleanMyMac for system maintenance
- Remove unused large applications (e.g., GarageBand)
  - Remove applications using Launchpad by holding down the option key

**Garage Band:**

If you don't have a large hard drive and space is at a premium removing Garage Band will free up a bunch of it. Unfortunately, AppCleaner only works for 3rd party installed applications and won't remove GarageBand but CleanMyMac will.

If you need to remove this manually (or use Launchpad) there are a few locations you need to remove. If you're going to use apple sound affects in other programs please read up on this before deleting it.

* /Applications/GarageBand.app
* /Library/Application Support/GarageBand/
* /Library/Audio/Apple Loops/Apple/

Empty Trash

### Storage Management
- Use Storage Management tool
- Clean up Downloads folder
- Remove unnecessary languages
- Clear system caches

### Performance Optimization

**Energy Management**
- Review battery health settings
- Configure "Optimize Battery Charging"
- Set up Low Power Mode preferences
- Monitor battery cycle count

**Activity Monitor Tips**
- How to identify resource-intensive applications
- Setting up Activity Monitor Dock icon to show CPU usage
- Understanding memory pressure
- Managing startup items

## Reference

### Essential Keyboard Shortcuts
```
⌘ + Space        - Spotlight Search
⌘ + Tab          - App Switcher
⌘ + `            - Window Switcher
⌘ + Q            - Quit Application
⌘ + W            - Close Window
⌘ + Option + Esc - Force Quit
```

## Contact & Resources

If you have any questions about anything I am using or have suggestions for something I am missing please don't hesitate to reach out.

- Website: [www.danvega.dev](http://www.danvega.dev)
- Email: danvega@gmail.com
- Setup Details: [Uses Page](https://www.danvega.dev/uses/)