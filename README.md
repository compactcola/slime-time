# slime-time
video tutorial: https://www.youtube.com/watch?v=GwCiGixlqiU 

(The initial commit and change 1 are pushed at the same time because I DESPISE GitHub and I think it despises me as well, so this is about my 5th time creating and trying to push this repo.)

Initial Commit:
Took me probably little over 2 hours to follow the tutorial and touch up the initial demo game. Followed nearly directly aside from a couple of small name changes in the code as well as a tiny improvement to shooting to only do so when there is an enemy in rage. Otherwise just the basic demo game as seen in video.

CHANGE 1 - RUNNING & STAMINA:
Adding a sprinting system that allows the player to move at 2x speed while holding shift so long as they have the stamina to do so. Stamina will drain at a constant rate. If fully depleted, the bar will turn red and the player will be unable to sprint until the stamina has recharged to the 90% threshold. 

Took me less than an hour and most of the difficulty with this addition came from editing and manipulating the UI through code.


CHANGE 2 - SMALLER QUICKER SLIMES:
Added a reason to sprint! These slimes have about a 20% chance to spawn and are twice as fast as normal slimes, but also die in one hit. I made them smaller to differentiate them from normal slimes. I wanted to also change their color but they way the demo handles the sprites and animations is kind of weird and I didn't have the time to spend messing with it.

Took me about half an hour.


CHANGE 3 - MAIN MENU
Added a simple main menu with a start button. The game should automatically launch into this menu and only start when you hit the button. Additionally, I made it so that, when you die, after a 3 second pause the game will automatically return you to the main menu instead of lingering on the death screen forever.

Took me 15 minutes, but I did cheat by referencing code from a previous Godot game I made.


Overall I wish I had more time to implement more interesting and robust changes but I've been slammed this weekend with a big art project. In the future I'd like to experiment more with the game visually, adding custom assets, animations, and maybe even diving into shaders!
