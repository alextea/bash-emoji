# Returns a clock emoji to the nearest half hour
clock_emoji() {
    local hour=$(date +%l)
    local minute=$(date +%M)
    local CE=🕛
    local clock_array=(🕛 🕧 🕐 🕜 🕑 🕝 🕒 🕞 🕓 🕟 🕔 🕠 🕕 🕡 🕖 🕢 🕗 🕣 🕘 🕤 🕙 🕥 🕚 🕦)

    hour=${hour#0}
    minute=${minute#0}

    if [[ $hour -eq 12 ]]; then
      hour=0
    fi

    local index=$((hour * 2));
    if [[ $minute -gt 29 ]]; then
      ((index++))
    fi

    CE=${clock_array[$index]}

    echo $CE
}
