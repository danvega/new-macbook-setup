# Boot Camp Windows 10

This document is going to outline what you need to do to install Windows 10 on Mac OS. The first thing you should do is checkout the official support documentation from Apple. This document outlines things you should know before you begin, where to get a Windows 10 ISO image and the steps you need to get everything working. 

https://support.apple.com/en-us/HT201468 

## Before we start

* You will need enough free disk space to create a Boot Camp disk partition with a minimum size of 64GB. 128GB is recommended for the best experience.	
* Unplug any external devices such as keyboards, mouse and monitors. 
* Plug in your power source just in case you walk away from the computer. The last thing you want to happen is for the computer to die mid install.

**Steps**

* Download windows 10 ISO
* Run Boot Camp Assistant
* Select Partition (128GB Recommended)
* Install Windows

\**If you go through ISO download wizard and it says "Windows 10 Education English" don't worry about that. When we install Windows we can select the version (Education/Home/Professional) that we want.*

## Windows Installation 

After the partition is created and reboots into Windows

* Select your language
* Enter your product key (It is OK if you don't have one, select I don't have a product key)
* Select Windows 10 Version (Win 10 Home)
* Accept the license terms (Read every single word)
* When you are asked to create a username don’t put a space in your name. When you create a username it is going to be the name of the users home folder /Users/Dan Vega/. I don't know about you but I am not a fan of spaces.
* Enter password and Security questions/answers
* Cortana (I turn off)
* Privacy Settings ( I turn all of these off)

Post Windows Installation

* Install Boot Camp on Windows (Restart after recommended)
* Connect to Wireless Network
* Run Apple Software Update (Start menu) (Restart Required)
* Update Date/Time Settings
* Enable Developer Mode
* Activate Windows (if you have a product key)
    * Personalize Windows

## Software Installation

I am not installing a full suite of applications here because I am not using this full time. 

* [Google Chrome](https://www.google.com/chrome/)
* [Visual Studio 2017 Community](https://visualstudio.microsoft.com/downloads/)
    * .NET Core 
* [SQL Server 2017 Express Edition](https://www.microsoft.com/en-us/sql-server/sql-server-editions-express)
* [SQL Studio Management Studio (SSMS) 17.9 GA](https://docs.microsoft.com/en-us/sql/ssms/sql-server-management-studio-changelog-ssms?view=sql-server-2017#ssms-179-latest-ga-release)
* [Ubuntu on Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (If you want bash) 
* [Visual Studio Code](https://code.visualstudio.com/)    

## Switching Between Operating Systems
If you want to switch between operating systems restart the computer and hold the option key down. When the computer boots it will ask you which partition you want to boot in. You can only run one operating system at a time and can’t run both in parallel. 


