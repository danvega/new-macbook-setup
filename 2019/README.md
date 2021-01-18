# MacBook Pro (16-inch, 2019) Setup

I like to update my process for setting up a new machine and I'm back with an update for 2021. This will be the first of two new setups because I plan on getting the new 16" M1 MacBook Pro whenever that is released.

- MacBook Pro (16-inch, 2019)
    - 4 Thunderbolt 3 ports
- Processor: 2.6 GHz 6-Core Intel Core i7
- Memory 32GB 2667 MHz DDR4
- Graphics: AMD Radeon Pro 5300M 4 GB Intel UHD Graphics 630 1536 MB

> At the time of writing this I have only been using this machine for about a week but I can honestly say it's one of the best machines I have ever owned.

## macOS Updates

The first thing I do is run any updates that are available. In my case the laptop came preloaded with macOS Catalina and macOS Big Sur was just released.

So my first step is going to be to update to macOS Big Sur. You can download this and run this from the App Store.

## System Preferences

I have a few things that I customize in preferences:

**Trackpad:**
System Preferences > Trackpad > Scroll & Zoom:
I uncheck scroll direction: Natural (It doesn’t feel natural for me)

**Dock:**
System Preferences > Dock
Change the size to small and turn on magnification
I also remove all icons from the dock that i don't use

**Avatar:**
System Preferences > Users & Groups > Edit Avatar

**Theme:**
macOS Mojave introduced light & dark themes. I still stick with the light theme even though I use dark themes in almost every editor or program that I use. If you want to change this later simply go to System Preferences > General > Appearance

## Finder

I like to customize Finder so I can get to all of my most used places quickly.

**Locations**

* Add Macintosh HD to locations so I can always get to the root hard drive
* Home /Users/vega
* screenshots (configure screenshot utility to save here)
    * open screenshot > options > other location

**A few tips in finder**

* cmd+shift+h (takes you home)
* cmd . (show hidden files and folders)

## App Store

If you have signed in with your Apple Id you will be taken directly to the Apple Store. This is a good time to run any updates that are available.

*You might run into issues here because the apple id that downloaded them is not you. In this case I just removed those apps I am not using (GarageBand,Numbers,Pages,iMovie...)*

To remove applications I like installing [AppCleaner](https://freemacsoft.net/appcleaner/). This will make sure that the application and any related files will be removed.

Another application I love for this and so many other things is [Clean My Mac](https://macpaw.com/cleanmymac). This is a paid application and worth the price tag.

### Garage Band

If you don't have a large hard drive and space is at a premium removing Garage Band will free up a bunch of it. Unfortunately, AppCleaner only works for 3rd party installed applications and won't remove GarageBand. You need to remove this manually and while there are a few more locations these are the main 3 you should remove. If you're going to use apple sound affects in other programs please read up on this before deleting it.

* /Applications/GarageBand.app
* /Library/Application Support/GarageBand/
* /Library/Audio/Apple Loops/Apple/

Empty Trash


## Getting Started

Anything I can install using [HomeBrew](https://brew.sh/) I will. Before you install HomeBrew though you need to install the xcode command line utilities. Open up a new terminal and type the following command. Even if you plan on installing xcode I believe you still need to install these now as they moved them out of the standard installation.

```
xcode-select --install
```

The command-line Tools Package is a small self-contained package available for download separately from Xcode and that allows you to do command-line development in OS X. It consists of two components: OS X SDK and command-line tools such as Clang, which are installed in /usr/bin.

### HomeBrew

As I said earlier I use HomeBrew to install anything that it can install. If you normally use brew to install something like google-chrome you know that you have to then drag it into the applications folder. If you use cask it will not only download the package but also move it into the applications folder for you.

[HomeBrew Website](https://brew.sh/)

Installation:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Post Installation

* If you need help with brew you can run brew help.
* brew update - You shouldn't have anything to update but its good to check.
* brew search 'term' to search for brews

## Shell

The default shell in macOS is now zsh. All this means is that the user account shell will default to zsh. This doesn't mean you can't use bash or whatever shell you want. In the past I have switched this to bash but I have decided to stop being an old man who is stuck in his ways and switch over to zsh and oh-my-zsh.

### OH MY ZSH

https://ohmyz.sh/

https://github.com/denysdovhan/spaceship-prompt

### iTerm2

For the longest time I used the terminal and even had a couple of people call me out on it :joy:

I am now using iTerm2 full time and I absolutely love it. If you want to find out about some of the features & configurations it gives you please [check out their website](https://www.iterm2.com/features.html).

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

Now that I have a nice looking command line full of features its time to start installing all of the different applications I will use. If you have any questions about any of these or why I install them please see the contact me section below.

* brew install git
* brew install --cask google-chrome
* brew install --cask google-chrome-canary
* brew install --cask firefox
* brew install --cask firefox-developer-edition
* brew install --cask visual-studio-code
* brew install --cask visual-studio-code-insiders
* brew install --cask intellij-idea
* brew install --cask eclipse-java
* brew install --cask postman
* brew install --cask docker
* brew install --cask spectacle
* brew install tree
* https://github.com/sindresorhus/quick-look-plugins

### Visual Studio Code

If you aren't using Visual Studio Code, what the heck are you waiting for? All jokes aside I am sure you have probably heard of code by now and here is a few ways that I customize it.

#### Fonts

I am a huge fan of the Dank Mono font. I install this and use it for most of my development. If I am writing documentation I will sometimes use a different font, it just depends.

[Dank Mono](https://dank.sh/)

### Node & NPM

If you're going to install Node I think the best way to do so is by using [Node Version Manager (NVM)](https://github.com/creationix/nvm). This to me has a few advantages over installing it from brew or even directly downloading it from their website.

* You can install multiple versions of Node
    * You can set a default version
    * You can switch between these versions easily
* Installs in your home directory
    * You don't need special privileges
    * No more sudo when installing packages globally

Once you have NVM you can install the latest stable realease (v10.12.0 at the time of this writing) using the following command.

```
nvm install stable
```

#### Global Packages to Install

npm install -g tldr
npm install -g typescript
npm install -g @vue/cli
npm install -g vuepress
npm install -g @angular/cli
npm install -g eslint
npm install -g gitbook-cli
npm install -g lodash

### Git Config

There is usually a default install of git but we used brew to install the latest earlier. Now that we are on the latest version of git we need to do a little configuration.

.gitconfig

* git config --global user.email "danvega@gmail.com
* git config --global user.name "Dan Vega"

### SDKMan

This is one of my favorite version managers because I use a lot of the Software Development Kits (SDKs) it manages. If you haven't heard of [SDKMan check them out here](https://sdkman.io/install). This is a list of SDKs I manage using SDKMan.

* Java
* Groovy
* Grails
* Gradle
* Maven
* Micronaut
* Spring Boot
* Kotlin

Here is a full list of SDKs https://sdkman.io/sdks

**Installation:** curl -s "https://get.sdkman.io" | bash

If you just type sdk install candidate it will install the latest stable version or you can install a specific version

```
sdk install java 8.0.191-oracle
```

If you need to get a list of versions you can ask for it:

```
sdk list java
```

## macOS Workflows

Convert to JPG

[https://twitter.com/wesbos/status/1349353751723855875](https://twitter.com/wesbos/status/1349353751723855875)

## Work Setup

These are a list of applications and configuration I need for work. You may not need some of these tools but I thought I would share them here anyways.

Last Pass
Slack
Twitter (App Store)
Screenflow

### Adobe Creative Suite

I am huge fan of Adobe and all of their products!

* Photoshop CC
* Illustrator CC
* Premiere Pro CC
* After Effects CC
* Premiere Rush CC
* XD


## danvega /uses


## Contact Me

If you have any questions about anything I am using or have suggestions for something I am missing please don't hesitate to reach out. You can find me on my website at http://www.therealdanvega.com or send me an email to danvega@gmail.com. 

