# New MacBook Setup

I thought I would take some time and document what I do when I get a new machine. This is going to walk through some preferences I configure, applications I install and settings I use for different programs. 

I am a Software Developer so most of my configuration will be around programming. My current MacBook configuration is as follows: 

* MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)
* Processor: 2.3 GHz Intel Core i5
* Memory: 16 GB
* Startup Disk: Macintosh HD
* Graphics: Intel Iris Plus Graphics 640 1536 MB
* Storage: 500 GB

When you power on your MacBook you are going to run through the setup. I usually configure anything I can here like Wi-fi & Apple ID. The rest of the instructions will assume you made it through the setup and are on the desktop.

*If you don't want to have to wait for disk encryption (error in macOS updates section) don't select that during setup and perform that at a later time*

## macOS Updates

The first thing I do is run any updates that are available. In my case the laptop came preloaded with macOS Sierra and macOS Mojave has been released. 

So my first step is going to be to update to macOS Mojave. You can download this and run this from the App Store.

*Error: You may not install to this volume because it is currently being encrypted* 

If you get the error above than you chose the option of encrypting your hard drive during setup. Make sure you have the power plugged in and go to System Preferences > Security & Privacy > File Vault. From there you can see the progress of encryption and when its complete you can launch the macOS Mojave installer. 

## App Store

If you have signed in with your Apple Id you will be taken directly to the Apple Store. This is a good time to run any updates that are available. 

*You might run into issues here because the apple id that downloaded them is not you. In this case I just removed those apps I am not using (GarageBand,Numbers,Pages,iMovie...)*

To remove applications I like installing [AppCleaner](https://freemacsoft.net/appcleaner/). This will make sure that the application and any related files will be removed.  

### Garage Band

Unfortunately AppCleaner only works for 3rd party installed applications and wont remove GarageBand. You need to remove this manually and while there are a few more locations these are the main 3 you should remove. If you're going to use apple sound affects in other programs please read up on this before deleting. 

* /Applications/GarageBand.app
* /Library/Application Support/GarageBand/
* /Library/Audio/Apple Loops/Apple/

Empty Trash

## System Preferences

System Preferences > Trackpad > Scroll & Zoom: 
I uncheck scroll direction: Natural (It doesn’t feel natural for me) 

System Preferences > Dock
Change the size to small and turn on magnification
I also remove all icons from the dock that i don't use


Change my avatar
System Preferences > Users & Groups > Edit Avatar

**Theme:**
macOS Mojave introduced light & dark themes. I still stick with the light theme even though I use dark themes in almost every editor or program that I use. If you want to change this later simply go to System Preferences > General > Appearance

## Getting Started 

Anything I can install using [HomeBrew](https://brew.sh/) I will. Before you install HomeBrew though you need to install the xcode command line utilities. Open up a new terminal and type the following command.

```
xcode-select --install
```

The Command Line Tools Package is a small self-contained package available for download separately from Xcode and that allows you to do command line development in OS X. It consists of two components: OS X SDK and command-line tools such as Clang, which are installed in /usr/bin.

### HomeBrew

https://brew.sh/ 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update - You shouldn't have anything to update but its good to check. 

brew search 'term' to search for brews

## Terminal 

customizing terminal - how to remove the machine name from a prompt

http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/
bash -v (bash-3.2)
brew install bash
if you close terminal or open a new tab it will show 4.4 but this still isn't the default version.

which bash
/usr/local/bin/bash

sudo vi /etc/shells
add the path /usr/local/bin/bash
comment out the others

Change to the new shell
chsh -s /usr/local/bin/bash 


now run which bash | bash -v

touch .bash_profile
copy in profile


## Development Setup

brew install git
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install visual-studio-code
brew cask install visual-studio-code-insiders
brew cask install intellij-idea
brew cask install eclipse-java


### Visual Studio Code Extensions

I used to hate having to install Visual Studio Code on a new machine. The reason for that is I have grown to love the editor so much that I have an extension for everything. I use to install them one by one and when you have to do that 35 times it gets really old. 

If you want to get a list of extensions currently installed on your machine you can use the following command. 

```
code --list-extensions
```

The nice thing about that is you can install visual studio code extensions using the command line.

```
code --install-extension ${extension-name}
```

You can pipe the results of your list into a file or if you wish you can grab mine from this repository. Once you have that file you can run the following to install all of your extensions. 

vscode-extensions.txt
cat extensions.txt | xargs -L1 code --install-extension


### Node & NPM 

nvm (node version manager)
you don't need permissions to install globally
no sudo
https://github.com/creationix/nvm

nvm install stable (v10.12.0)

better than installing via brew or downloading the installer from the website
it installs into your home directory so you don't need any special privileges 

Global packages I install right away

npm install -g 

### Browser Configuration

Turn on sync and sign into chrome, this brings all of my bookmarks and extensions

Extensions
LastPass
Grammarly
Color Picker
LiveReload
uBlock Origin
privacy badger 
oneTab
JSONViewer
Vue devtools

stylus
userstyles.org



## Finder

I like to customize Finder right off the bat as well

Locations
Add Macintosh HD so I can always get to the root hard drive
Add Some Favorites
Home /Users/vega
screenshots (configure screenshot utility to save here)
open screenshot > options > other location 

cmd+shift+h (takes you home)
cmd . (show hidden files and folders)

Go > Computer > Move hard drive to favorites or locations

## Work Setup

These are a list of applications and configuration I need for work. You may not need some of these tools but I thought I would share them here anyways.

brew cask install t






