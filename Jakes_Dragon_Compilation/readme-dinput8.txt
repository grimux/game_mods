Features

Save backups
A hook is placed just before the game creates a save. When it gets there, the current save gets duplicated with a timestamp added to it.
If you need to revert to previous save, simply rename it to "ddda.sav".
It should find the save path automatically, if not see dinput8.ini.
You can limit the number of backups it keeps in dinput8.ini.

Hotkeys
Shortcuts to some menu items. It just simulates the keypresses you would normally do, so it has to press ESC, wait for the main menu to come up -> press additional keys. That waiting is just a normal pause for x milliseconds, so you may need to adjust it in dinput8.ini if its not entering the second menu.
You can change the hotkeys in dinput8.ini, set to 0xFF to disable.

    F5 = autosave, F9 = save checkpoint, M = map, J = journal/quests, U = equipment, K = status, Num5 = hide/show ingame clock
    changing in-game time - Num4/Num6 = substract/add a minute, Num2/Num8 = substract/add an hour


Character customization screen
Allows you to enter the character customization screen at any time.
It replaces the Manual menu (the one on the very first screen).
You need to enter it with keyboard (press enter), doesn't work with mouse.

Misc

    Disable auto cam - prevents camera from autocorrecting when moving around with sheathed weapon
    Extend vertical cam - extends the vertical range you can view with the camera (works with bow aiming too)
    Borderless fullscreen - turns windowed mode into borderless fullscreen
    Gathering speed - allows you to speed up gathering/mining
    Jump mod - allows you changes the behavior of regular jump and jump while running
    Fall height - option to change from which height you start taking dmg (-1000 is default, with Grace augment -1500, so you want to set lower number)
    Movement speed - allows you to mod movement speed (running/walking)


Cheats

    Share weapon skills - allows you to use all learnt weapon skills regardless of your vocation
    Ignore equip vocation - allows you to equip anything regardless of your vocation
    Run type outside of towns - allows you to force the town running animation (and/or remove the stamina drain) outside of towns as well
    Time interval - allows you modify the speed of in-game time (so you can make the day longer/shorter)
    Affinity mod - allows you to ignore negative/positive affinity changes, make any change positive or set affinity to max on any change


Third level skills
Allows you to upgrade your lvl 2 skills to lvl 3.
You can choose specifically which skills and choose different settings to player/pawns

Weapon skill sets
Allows you to quickly swap between skills.
Use the in-game ui to add and configure some skill sets, then press R (you can change the key in dinput8.ini) to cycle between them. The current set number is displayed under the in-game clock.
The timeout is a delay before being able to reequip the skills again (so change to another set). Do not lower it too much or it's gonna cause crashes if you press the buttons too quickly.

Augment mods
Allows you to make the game believe you (or your pawn) have an augment activated (so basically equip any number of augments).
Allows you to change the power/magnitude of most augments. You can change the value of activated and deactivated augment.
Unlike modding augments by changing game files, this works only on your party.
What augments it won't work with:

    hardcoded behaviour - 34: Retribution, 35: Reinforcement, 42: Autonomy, 43: Bloodlust(partially), 52: Detection, 63: Ferocity(partially), 72: Precision, 103: Conveyance, 113: Grace
    didn't find where they are at all - 13: Damping, 41: Preemption, 84: Suasion
    no value modding (only the alway on option) - 73: Stability, 102: Tenacity, 104: Acquisition, 108: Athleticism, 112: Flow


You got 2 buttons in the UI:
1) Active - checkboxes there can make the game believe the augment is always equipped (for a specific party member)
2) Mods - after you add some augment to mod, it will use all the specified values instead of the original ones (if you add a mod while in-game and not in main menu, it will fill the fields with the original values, so you know what you're modyfing)

    Activated - changes the value that the game uses when the augment is equipped
    Deactivated - changes the value that the game uses when the augment is NOT equipped
    Unknown1, Unknown2 - additional values used only with a few augments, e.g. regeneration or the augments that work only during night
    some of the values have a limit, e.g. stat boosters have some cumulative limit so changing it to super high values won't have any effect
    sometimes lower is better, when high values don't have any effect, try using something between 0 and 1


Examples of what you can do:

    change the value of Articulacy to further decrease your spell cast time (or make it instant)
    change the value of Sinew e.g. to 5000 to be able to carry anything
    change the value of Radiance e.g. to 100 to make the lantern shine like a sun


In-game clock
Displays in-game time. Needs the in-game UI enabled.
When you open the in-game UI (see below) you can drag the clock to any position you want. You need to save the position in the in-game UI.
You can also change the size (restart required to have an effect) and its color + how often it's updated.

In-game UI (overlay)
Draws an additional window in-game, which allows you to configure this mod + edit some in-game stuff.
Press F12 to bring it up (you can change the key in dinput8.ini and obviously you need to keep hotkeys enabled).
Available menus + what they contain:

    Main - configure camera fixes, changing weather (+ disabling the post game weather)
    Cheats - detailed configuration of 'Third level skills', 'Augment mods' and 'Affinity mod' + turning on/off the rest of cheats
    Portcrystals - allows you to move your portcrystals around the map (they need to be placed somewhere already)
        1) open the map, click on some place you want to move the portcrystal (as if you wanted to make a waypoint)
        2) in the in-game overlay click on Cursor or Closest button next to the portcrystal you want to move
        Closest - uses the latest named position (the ones with an icon) you moved your cursor on
        Cursor - uses the exact position your cursor is on
        (the game calculates Z position only on the named places, so you wanna use the Closest option if you don't wanna end up falling through the map)
    Stats - allows you to edit stats of every party member: gold + rc, attributes (lvl, dcp, xp, health, stamina, str, def), vocations (rank, xp), inclinations + skill use
    Skills - assigning learned skills + equipped weapon skills/augments (no need to reequip the weapon afterwards, but you still need to at least enter/exit the main menu)
    Item Editor - you need to open inventory and select an item for it to start showing anything, you can search the items by name (just start typing into the Filter field)
    IMPORTANT - if you want to change a weapon or armor/clothing, after changing it give it to your pawn and back to yourself for it to work!!!
    Clock - configuring clock - size, color, timebase, saving its position


Installation
Copy dinput8.dll and dinput8.ini into the main DDDA folder.