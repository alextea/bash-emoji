# bash-emoji

🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇

Some simple tools to add random emoji to your bash prompt

👨🏻 🧔🏻 🕵🏻‍ 👨🏻‍🎤 👨🏻‍💻 👨🏻‍🔧 👨🏻‍⚖️ 🤵🏻

## clock-emoji.sh

Use this script to add a clock emoji 🕐 to nearest half hour to your prompt.

Include the script in your bash_profile like so:

```
source ~/path_to_script/clock_emoji.sh
```

And add the `clock_emoji` function in your `PS1` variable.

```
PS1='$(clock_emoji) \u@\h \W\\$'
```

This will output something like:

```
🕐 alex_tea@mymac ~/path_to_script$
```

## emoji-prompt.sh

This script returns an emoji randomly selected from one of 2 arrays, `face_emoji` or `folder_emoji`. `face_emoji` contains different faces and `folder_emoji` has different emoji that look cool in front of a folder name.

You can edit the arrays if you wish, and you should probably update the face_emoji array to suit your needs.

The script also amends these arrays based on the date at certain times of the year for special occasions, like Halloween or Christmas.

You need to include the script in your bash_profile:

```
source ~/path_to_script/emoji-prompt.sh
```

And then call the function in your `PS1` variable.

```
PS1='$(random_emoji face) \u $(random_emoji folder) \W\\$'
```

That will output something like:

```
👨🏻‍💻 alex_tea 🥑 ~/path_to_script$
```

You can combine both scripts for maximum emoji power.

```
PS1='$(clock_emoji): $(random_emoji face) \u $(random_emoji folder) \W\\$'
```

```
🕐: 👨🏻‍💻 alex_tea 🥑 ~/path_to_script$
```
