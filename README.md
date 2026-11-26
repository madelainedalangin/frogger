# Frogger

A top-down road-crossing game inspired by Frogger, made with Godot 4 and GDScript. Dodge the traffic and reach the market at the top of the city as fast as you can.

![Gameplay of Dodgy Carsie](media/gameplay.gif)

## How to play

- Make your way through the city streets to the market at the top of the map.
- Cars drive across the screen from both sides. If one hits you, the run ends and you go back to the title screen.
- A timer counts the seconds of each run. Reach the market faster than your best time to set a new one. Your best time shows on the title screen as your high score, and the time to beat starts at 10 seconds.
- Your best time resets when you close the game.

## Controls

| Action | Keys |
| --- | --- |
| Move up | Up arrow, W or O |
| Move left | Left arrow, A or K |
| Move down | Down arrow, S or L |
| Move right | Right arrow, D or ; |
| Start or play again | Space |

## Run it

1. Install [Godot 4.6](https://godotengine.org/download) or later. The standard version is enough, since the game uses GDScript only.
2. Open Godot, click **Import** and select `project.godot` in this folder.
3. Click **Run Project**, the play button at the top right of the editor.

## How it works

- **Player:** a `CharacterBody2D` that reads the four movement actions with `Input.get_vector()` and moves with `move_and_slide()`, so it collides with walls, buildings and objects. A camera follows the player, zoomed in on the map.
- **Cars:** `Area2D` nodes that only check for overlap, with no physics. A `Timer` spawns a car at a random start marker on the left or right edge, with a random colour. Each car deletes itself once it leaves the screen.
- **Timing:** a second `Timer` adds one to the run's time every second and updates the on-screen label.
- **Best time:** stored in an autoload singleton (`Global`), so it survives the switch between the game and title scenes.
- **Collision layers:** terrain, player, cars, walls and buildings are on separate physics layers, so each node only checks for the things it should hit.

## Project structure

```
scenes/     game, title, player and car scenes, with their scripts
graphics/   map, player, car and object sprites
audio/      music and car sound
fonts/      title and interface fonts
```

## Credits

- Art: [Roguelike Modern City](https://kenney.nl/assets/roguelike-modern-city) by Kenney
- Music: [City on Speed](https://opengameart.org/content/city-on-speed) by Section 31
- Fonts: [Better VCR](https://www.dafont.com/better-vcr.font) by artdzyk and [Crackman](https://www.dafont.com/crackman.font) by Typomodernic Fonts

Made by [Madelaine Dalangin](https://madelainedalangin.com).
