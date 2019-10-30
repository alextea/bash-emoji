random_emoji() {
  # Seed random generator
  RANDOM=$$$(date +%s)

  local face_emoji=(😈 👹 👺 🤡 💩 👻 ☠️ 👽 👾 🤖 🎃 👨🏻 🧔🏻 🕵🏻‍ 👨🏻‍🎤 👨🏻‍💻 👨🏻‍🔧 👨🏻‍⚖️ 🤵🏻 🎅🏻 🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐷 🐸 🐵 🙈 🙉 🙊 🐔 🐧 🐦 🐤 🐥)
  local folder_emoji=(🦷 💅 🧶 👠 🎩 👑 👓 🐛 🐙 🦀 🐡 🐟 🐳 🌵 🌳 🍄 🌼 🌞 🌝 🌛 🔥 🌈 🌤 🌧 ⛄️ ☂️ 🌊 🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 🍓 🍈 🍒 🍑 🥭 🍍 🥥 🥝 🍅 🍆 🥑 🥦 🌶 🌽 🥐 🥖 🧀 🍳 🥩 🍖 🦴 🌭 🍔 🍟 🍕 🍝 🍣 🍤 🍙 🍦 🍰 🍭 🍬 🍩 🍪 🍼 ☕️ 🍺 🍷 🍾 🍽 🏆 🏅 🎪 🎬 🎨 🎲 🎤 🎧 🎹 🥁 🎸 🎮 🧩 🚗 🚕 🚙 🚌 🚎 🏎 🚓 🚑 🚒 🚐 🚚 🚛 🚜 🚲 🚨 🚡 🚝 🚄 🚅 🚂 🚇 ✈️ 🛫 🚀 🛸 🚁 🛶 ⛵️ 🚤 🛳 🚢 ⚓️ 🚧 🚦 🗿 🗽 🗼 🏰 🏯 🎡 🎠 ⛱ 🏖 🏝 🌋 ⛰ 🗻 ⛺️ 🏠 🏚 🏭 🏢 🏛 ⛩ 🌅 🌄 🎇 🎆 🌇 🌆 🏙 🌃 📱 💻 🖥 🕹 💽 💾 💿 📀 📼 📷 ☎️ 🧭 ⏱ ⏰ ⌛️ 📡 💡 🧯 💸 💰 💎 🧰 🛠 ⚙️ 🧲 🔫 🧨 🔮 🧿 💈 💊 🚽 🛎 🔑 🧸 🖼 🛍 🎁 🎈 🎏 🎀 🎊 🎉 🎎 🏮 💌 📫 📮 📕 📌 📍 📝 ✏️ 🔒 ❤️ 🧡 💛 💚 💙 💜 ☮️ ☯️ ⚛️ ☢️ ☣️ 🆚 🆘 🛑 💯 🔞 🚷 🚳 🚭 ⚠️ 🚸 ♻️ ✳️ Ⓜ️ 🌀 ♿️ 🛄 🚼 🚻 🆗 🆒 🆕 📣 🔔 💬)

  local day=$(date +%d)
  local month=$(date +%m)

  if [[ $month -eq 2 && $day -eq 14 ]]; then
    # valentine's day
    folder_emoji=(💌 ❤️ 🧡 💛 💚 💙 💜 ❣️ 💕 💞 💓 💗 💖 💘 💝)
  elif [[ $month -eq 10 ]]; then
    # halloween
    face_emoji=(👹 👺 👻 💀 🎃 🧛🏻‍♂️  🧟‍♂️  🕷  🕸 )
  elif [[ $month -eq 11 && $day -eq 5 ]]; then
    # bonfire night
    folder_emoji=(🎇 🎆)
  elif [[ $month -eq 12 && $day -le 25 ]]; then
    # christmas
    face_emoji=(🎅🏻)
    folder_emoji=(🎄 🎁 ☃️ ⛄️)
  elif [[ $month -eq 12 && $day -eq 31 ]]; then
    # new years eve
    folder_emoji=(🍾 🥂 🎊 🎉)
  fi

  local array=("${face_emoji[@]}")
  if [[ $1 == "folder" ]]; then
    array=("${folder_emoji[@]}")
  fi

  SELECTED_EMOJI=${array[$RANDOM % ${#array[@]}]};
  echo $SELECTED_EMOJI;
}
