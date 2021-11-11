# MacBook Pro M1 Max (14-inch, 2021) Setup

I have been looking forward to getting this computer ever since the M1 was released in 2020. In this setup I will walk you through my process for setting up my new MacBook Pro. If you have any questions or suggestions please contact me or send me a pull request. The laptop I am setting up with this document is:

- MacBook Pro (14-inch, 2021)
- Chip: Apple M1 Max
- Memory 32GB

## Apple Care

If you haven't already purchased Apple Care what are you waiting for? You have 90 days but I wouldn't wait and now that you can basically pay $99 a year for Apple Care it's an easy choice. If you have purchased it make sure you active it now. If you don't do it now its something you will quickly forget about and you don't want to. To check your support plan is in place you go to  `Apple > About This Mac > Support` and verify you coverage. 

## Setup Laptop on Desk

The first thing I did was set this up on my desk, connect my external monitors and hook up all of my peripherals:

 - LG 4k Display
 - Dell Ultrawide Display
 - Apple Magic Keybaord
 - Mx Master Mouse (I also went into preferences and changed the speed of the mouse)
 - Microphone
 - Camera
 - Lights
 - AirPods Pro
 - Headphones (wyze)

## System Preferences

I have a few things that I customize in preferences:

**Mouse** 
System Preferences > 
I update the tracking speed and scroll speed, I like to move fast. 

**Trackpad:**
System Preferences > Trackpad > Scroll & Zoom:
I uncheck scroll direction: Natural (It doesn’t feel natural for me)

**Dock:**
System Preferences > Dock
Change the size to small and turn on magnification
I also remove all icons from the dock that I don't use

**Avatar:**
System Preferences > Users & Groups > Edit Avatar

**Theme:**
macOS Mojave introduced light & dark themes. If you want to change this later simply go to `System Preferences > General > Appearance`. I like the auto option will use the light theme during the day and the dark theme at night.


## macOS Updates

The first thing I do is run any updates that are available. In my case, the laptop came preloaded with macOS Monterey and there was a 12.0.1 update avaible. You can find these updates by going to preferences > Software Updates. 

## App Store

This is a good time to check for any application updates or install any apps from the app store that you can't install via Homebrew. 

*You might run into issues here because the apple id that downloaded them is not you. In this case I just removed those apps I am not using (GarageBand,Numbers,Pages,iMovie...)*

To remove applications I like installing [AppCleaner](https://freemacsoft.net/appcleaner/). This will make sure that the application and any related files will be removed. Another application I love for this and so many other things is [Clean My Mac](https://macpaw.com/cleanmymac). This application has a yearly subscription fee but worth the price tag.

### Garage Band

If you don't have a large hard drive and space is at a premium removing Garage Band will free up a bunch of it. Unfortunately, AppCleaner only works for 3rd party installed applications and won't remove GarageBand but Clean My Mac will.  

You need to remove this manually and while there are a few more locations these are the main three you should remove. If you're going to use apple sound affects in other programs please read up on this before deleting it.

* /Applications/GarageBand.app
* /Library/Application Support/GarageBand/
* /Library/Audio/Apple Loops/Apple/

Empty Trash

### Install Apps

While I am in the App Store I take this opportunity to install any apps that I need that I can't install via Homebrew. This is my current list:

- Xcode

## Finder

I like to customize Finder so I can get to all of my most used places quickly.

**Favorites**

* Add common folders to favorites
  * Home (Users/vega)
  * dev/
  * youtube/
* screenshots (configure screenshot utility to save here)
    * open screenshot > options > other location

**A few tips in finder**

* cmd+shift+h (takes you home)
* cmd . (show hidden files and folders)

## Getting Started

Anything I can install using [HomeBrew](https://brew.sh/) I will. Before you install HomeBrew though you need to install the Xcode command-line utilities. Open up a new terminal and type the following command. Even if you plan on installing Xcode I believe you still need to install these now as they moved them out of the standard installation.

```
xcode-select --install
```

The command-line Tools Package is a small self-contained package available for download separately from Xcode and that allows you to do command-line development in OS X. It consists of two components: OS X SDK and command-line tools such as Clang, which are installed in `/usr/bin`.


### HomeBrew

As I said earlier I use HomeBrew to install anything that it can install. If you normally use brew to install something like google-chrome you know that you have to then drag it into the applications folder. If you use cask it will not only download the package but also move it into the applications folder for you.

[HomeBrew Website](https://brew.sh/)

Installation:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#### HomeBrew Post Installation

- Run these two commands in your terminal to add Homebrew to your PATH:
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/vega/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

## Shell

The default shell in macOS is now zsh. All this means is that the user account shell will default to zsh. This doesn't mean you can't use bash or whatever shell you want. In the past, I have switched this to bash but I have decided to stop being an old man who is stuck in his ways and switch over to zsh and oh-my-zsh.

 ### OH MY ZSH

If you're going to use ZSH you must start by installing [oh-my-zsh](https://ohmyz.sh/).

> Oh My Zsh is a delightful, open-source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout... "Oh My ZSH!"

This replaces the need for me to customize bash with all my aliases, shortcuts a personal preferences. Once you have oh-my-zsh installed you can switch themes and add plugins. I decided to install the [Spaceship theme](https://github.com/denysdovhan/spaceship-prompt) and here are the following plugins that I have activated.

```
plugins=(common-aliases git aws docker golang httpie node npm nvm spring zsh-syntax-highlighting zsh-autosuggestions zsh-z zsh-sdkman)
```

![Shell](./img/shell.png)

### iTerm2

I switched from Terminal to iTerm2 a couple of years ago and haven't looked back. If you want to find out about some of the features & configurations it gives you please [check out their website](https://www.iterm2.com/features.html).

```
brew install --cask iterm2
```

One thing I like to do is customize the colors and a great resource for that is https://iterm2colorschemes.com/

This is a list of my favorite color schemes.

* Dracula
* FirefoxDev
* Github
* Grape
* Grass
* Hipster Green
* Homebrew
* Man Page
* Material
* MaterialDark
* Novel
* OceanicMaterial


## Development Setup

Now that I have a clean and stylish command line full of features it's time to start installing all of the different applications I will use. If you have any questions about any of these or why I install them please see the contact me section below.

* brew install git
* brew install --cask google-chrome
* brew install --cask visual-studio-code
* brew install --cask intellij-idea
* brew install --cask docker
* brew install --cask tableplus
* brew install --cask insomnia
* brew install --cask lastpass
* brew install --cask rectangle
* brew install --cask obs
* brew install --cask zoom
* brew install --cask slack
* brew install --cask discord
* brew install --cask notion
* brew install --cask adobe-creative-cloud
* brew install tree
* brew install bat
* https://github.com/sindresorhus/quick-look-plugins