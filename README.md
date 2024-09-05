
# Red Leather Yellow Leather

This behavior pack detects the color of dyed leather armor and converts the color to a scoreboard. You can then run your own commands using the score parameter as part of your target selector.

This behavior pack uses the player.json to run animation controllers. It may conflict with other packs that use player.json.

## Installing the pack:

Add the Red Leather Yellow Leather Add-on to your behavior packs on your world. Behavior packs disable achievements, but editing the world with an NBT editor can re-enable achievements when uploading your world to a realm.

Re-enable achievements on either pc or mobile with the free NBT editor [Dovetail](https://github.com/Offroaders123/Dovetail) 

### How to use the scoreboard

You can give players who are wearing dyed leather armor an effect, like strength. This example command would be put into a repeating command block, set to unconditional, always active in a tickingarea.

```js
effect @a[scores={leather_helmet=1}] strength 1 0 true
```

You can also use multiple scores inside a target selector. This example command will only run if a player has all armor pieces that match.

```js
effect @a[scores={leather_helmet=1, leather_chestplate=1, leather_leggings=1, leather_boots=1}] strength 1 4 true
```

## Scoreboard Objectives and Color Chart

The following objectives are automatically added when you first load the world with the pack on:

### List of scoreboard objectives:
```js
leather_helmet
leather_chestplate
leather_leggings
leather_boots
```

### List of Color Chart Scores

|    Scores    |     Armor Color    |
| -----------: | -----------------: | 
|  [scores=0]  |   none/not leather |
|  [scores=1]  |      white leather |
|  [scores=2]  | light_gray leather |
|  [scores=3]  |       gray leather |
|  [scores=4]  |      black leather |
|  [scores=5]  |      brown leather |
|  [scores=6]  |        red leather |
|  [scores=7]  |     orange leather |
|  [scores=8]  |     yellow leather |
|  [scores=9]  |       lime leather |
| [scores=10]  |      green leather |
| [scores=11]  |       cyan leather |
| [scores=12]  | light_blue leather |
| [scores=13]  |       blue leather |
| [scores=14]  |     purple leather |
| [scores=16]  |    magenta leather |
| [scores=16]  |       pink leather |
| [scores=-1]  |     undyed leather |

## Color Chart for Dyed Leather

|  Color   |  Hex    |  Decimal |       RGB         |   R / 255    |   G / 255    |   B / 255    |
|  :----   | :-----: | -------: | :---------------: | :---------:  | :----------: | :----------: |
|  White   | #F0F0F0 | 15790320 |  (240, 240, 240)  |  0.94117653  |  0.94117653  |  0.94117653  |
|  L.Gray  | #9D9D97 | 10329495 |  (157, 157, 151)  |  0.61568627  |  0.61568627  |  0.59215686  |
|  Gray    | #474F52 |  4673362 |   (71,  79,  82)  |  0.27843138  |  0.30980392  |  0.32156863  |
|  Black   | #1D1D21 |  1908001 |   (29,  29,  33)  |  0.11372550  |  0.11372550  |  0.12941177  |
|  Brown   | #835432 |  8606770 |  (131,  84,  50)  |  0.51372550  |  0.32941176  |  0.19607846* |
|  Red     | #B02E26 | 11546150 |  (176,  46,  38)  |  0.69019608  |  0.18039216  |  0.14901961  |
|  Orange  | #F9801D | 16351261 |  (249, 128,  29)  |  0.97647061  |  0.50196078  |  0.11372550  |
|  Yellow  | #FED83D | 16701501 |  (254, 216,  61)  |  0.99607845  |  0.84705884  |  0.23921570  |
|  Lime    | #80C71F |  8439583 |  (128, 199,  31)  |  0.50196078  |  0.78039221  |  0.12156864* |
|  Green   | #5E7C16 |  6192150 |   (94, 124,  22)  |  0.36862747* |  0.48627454* |  0.08627451  |
|  Cyan    | #169C9C |  1481884 |   (22, 156, 156)  |  0.08627451  |  0.61176471  |  0.61176471  |
|  L.Blue  | #3AB3DA |  3847130 |   (58, 179, 218)  |  0.22745099  |  0.70196078  |  0.85490197  |
|  Blue    | #3C44AA |  3949738 |   (60,  68, 170)  |  0.23529414  |  0.26666667  |  0.66666667  |
|  Purple  | #8932B8 |  8991416 |  (137,  50, 184)  |  0.53725491  |  0.19607846* |  0.72156863  |
|  Magenta | #C74EBD | 13061821 |  (199,  78, 189)  |  0.78039221  |  0.30588235  |  0.74117647  |
|  Pink    | #F38BAA | 15961002 |  (243, 139, 170)  |  0.95294124* |  0.54509804  |  0.66666667  |
|  Undyed  | #A06540 | 10511680 |  (160, 101,  64)  |  0.62745099  |  0.39607846  |  0.25098039  |

Note: The RGB / 255 values are for exact matches in molang function query_armor_color_slot.
Some values round up and are not consistent with how other numbers round.

\* Some colors do not have exact matches due to recurring decimals:

<li>Brown B / 255 value:</li>
          <ul>
               q.armor_color_slot(0,2) > 0.196078459 && q.armor_color_slot(0,2) < 0.196078460
          </ul>
<li>Lime B / 255 value:</li>
          <ul>
               q.armor_color_slot(0,2) > 0.121568639 && q.armor_color_slot(0,2) < 0.12156864
          </ul>
<li>Green R / 255 value:</li>
          <ul>
               q.armor_color_slot(0,0) > 0.368627469 && q.armor_color_slot(0,0) < 0.36862747
          </ul>
<li>Green G / 255 value:</li>
          <ul>
               q.armor_color_slot(0,1) > 0.486274539 && q.armor_color_slot(0,1) < 0.48627454
          </ul>
<li>Purple G / 255 value:</li>
          <ul>
               q.armor_color_slot(0,1) > 0.196078459 && q.armor_color_slot(0,1) < 0.19607846 
          </ul>
<li>Pink R / 255 value:</li>
          <ul>
               q.armor_color_slot(0,0) > 0.952941239 && q.armor_color_slot(0,0) < 0.95294124
          </ul>

## Molang Query

The following example are molang queries for dyed leather helmets. 

```json
{
     "white_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.94117653 && q.armor_color_slot(0,1) == 0.94117653 && q.armor_color_slot(0,2) == 0.94117653"
},
{
     "light_gray_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.61568627 && q.armor_color_slot(0,1) == 0.61568627 && q.armor_color_slot(0,2) == 0.59215686"
},
{
     "gray_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.27843138 && q.armor_color_slot(0,1) == 0.30980392 && q.armor_color_slot(0,2) == 0.32156863"
},
{
     "black_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.11372550 && q.armor_color_slot(0,1) == 0.11372550 && q.armor_color_slot(0,2) == 0.12941177"
},
{
     "brown_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.51372550 && q.armor_color_slot(0,1) == 0.32941176 && q.armor_color_slot(0,2) > 0.196078459 && q.armor_color_slot(0,2) < 0.196078460"
},
{
     "red_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.69019608 && q.armor_color_slot(0,1) == 0.18039216 && q.armor_color_slot(0,2) == 0.14901961"
},
{
     "orange_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.97647061 && q.armor_color_slot(0,1) == 0.50196078 && q.armor_color_slot(0,2) == 0.11372550"
},
{
     "yellow_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.99607845 && q.armor_color_slot(0,1) == 0.84705884 && q.armor_color_slot(0,2) == 0.23921570"
},
{
     "lime_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.50196078 && q.armor_color_slot(0,1) == 0.78039221 && q.armor_color_slot(0,2) > 0.121568639 && q.armor_color_slot(0,2) < 0.12156864"
},
{
     "green_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) > 0.368627469 && q.armor_color_slot(0,0) < 0.36862747 && q.armor_color_slot(0,1) > 0.486274539 && q.armor_color_slot(0,1) < 0.48627454 && q.armor_color_slot(0,2) == 0.08627451"
},
{
     "cyan_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.08627451 && q.armor_color_slot(0,1) == 0.61176471 && q.armor_color_slot(0,2) == 0.61176471"
},
{
     "light_blue_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.22745099 && q.armor_color_slot(0,1) == 0.70196078 && q.armor_color_slot(0,2) == 0.85490197"
},
{
     "blue_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.23529414 && q.armor_color_slot(0,1) == 0.26666667 && q.armor_color_slot(0,2) == 0.66666667"
},
{
     "purple_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.53725491 && q.armor_color_slot(0,1) > 0.196078459 && q.armor_color_slot(0,1) < 0.19607846 && q.armor_color_slot(0,2) == 0.72156863"
},
{
     "magenta_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.78039221 && q.armor_color_slot(0,1) == 0.30588235 && q.armor_color_slot(0,2) == 0.74117647"
},
{
     "pink_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) > 0.952941239 && q.armor_color_slot(0,0) < 0.95294124 && q.armor_color_slot(0,1) == 0.54509804 && q.armor_color_slot(0,2) == 0.66666667"
},
{
     "undyed_helmet": "q.armor_texture_slot(0) == 0 && q.armor_color_slot(0,0) == 0.62745099 && q.armor_color_slot(0,1) == 0.39607846 && q.armor_color_slot(0,2) == 0.25098039"
}
```

## Authors

- [@mittens4all](https://www.github.com/mittens4all)
- [Mittens Youtube](https://www.youtube.com/@mittens4all)

# Gratitudes

- [JustAsh](https://github.com/Justash01) \\ Bedrock Commands Community Discord
- [Zhea Evyline](https://discord.gg/SYstTYx5G5) \\ Bedrock Commands Community Discord
- [Arctic Shark Games](http://www.youtube.com/@ArcticSharkGames)
- [Zombieclinic](http://www.youtube.com/@zombieclinic6753)
- [Guppyduck](http://www.youtube.com/@Guppyduck0)

- Made for Sylvester Stewart in Guppyduck's Command Central Discord

```js
       _                              _     _       _ _  
      (_)  _     _                   | |   (_)     | | | 
 ____  _ _| |_ _| |_ _____ ____   ___| |_____ _____| | | 
|    \| (_   _|_   _) ___ |  _ \ /___)_____  (____ | | | 
| | | | | | |_  | |_| ____| | | |___ |     | / ___ | | | 
|_|_|_|_|  \__)  \__)_____)_| |_(___/      |_\_____|\_)_)
                                                         
```
