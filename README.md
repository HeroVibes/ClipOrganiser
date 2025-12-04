# ClipOrganiser
Automatically organise your recordings and "replay captures" from OBS, Meld and other apps by creating a folder - with a name of your choosing - and moving the latest capture to it.

To use this, you'll need to modify two elements in the script, and a short third step:

# 1. The Directory
The directory is defined on (default is on Line 8 - "sourceFolder=**%USERPROFILE%\Documents\Recordings**". Set this to the folder OBS saves all recordings and clips to - simply replace **"%USERPROFILE%\Documents\Recordings"** for your folder path. The default folder for OBS, for instance, would be **"C:\Users\<username>\Videos"**.

# 2. The Folder Name
To customise the name of the folder that will be created - this is where the clips will be moved to - you'll want to change the name on Line 28 - **"call :MoveLatest "%sourceFolder%" "%sourceFolder%\Gameplay""**. Simply change **"Gameplay"** to the name of the folder; eg. "Funny Moments", "Boss Fights", "Deaths".

# 3. Rename The Script
To help keep things organised - particularly if you plan on having multiple scripts available, it's recommended to rename the script to something that helps identify it, like BossFights.bat, then put it in a safe folder.

Once the setup is complete, the script works best when paired with something like the Elgato Stream Deck. Simply drag and drop the script onto a "button", then test it by recording a short clip and tapping the button - a new folder with the name of your choosing should be created, and the recording should be moved inside.

Here are a few extra ideas:

# The Ultimate Organiser
One of my favourite uses for this script is to have a whole Stream Deck filled with these - 10+ buttons that automatically sort clips into different folders/categories - funny moments, boss fights, cutscenes, bugs, deaths, multiplayer, etc.. To do this, simply set up one version of the script with the correct directory, then duplicate it, changing the folder name in the script; "Boss Fights", for example, to "Cutscenes". Save it, rename the script to match, then add that one as a separate button. Rinse and repeat for as many folders/categories as you need. Now you have a super-powered clip organiser!

# Multi-Action
You can  pair this with a multi-action via the Stream Deck to capture your clip AND organise it, all with a single tap - capture a replay buffer clip, a slight delay to allow file for the clip to save properly, then run the script.

# Automatically Upload to Google Drive
If you have the Google Drive app installed on your PC, you can set a Google Drive directory as the save location for the clips - meaning that not only are your clips automatically captured and organised, but they're also immediately available on all devices!

If you enjoy using these, feel free to reach out and leave some suggestions, or let me know if you're having any issues. Feel free to share/modify the script - a shoutout to HeroVision and Elgato is always appreciated.

