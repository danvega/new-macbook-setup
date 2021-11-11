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