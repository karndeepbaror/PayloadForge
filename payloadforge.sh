#!/bin/bash

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🚀 PayloadForge - By Karndeep Baror
# Stay Ethical, Hack Strong 🇮🇳 By KK ⌷
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Colors
CYAN="\033[1;36m"
GREEN="\033[1;32m"
RESET="\033[0m"

# CTRL+C Trap
trap ctrl_c INT
ctrl_c() {
  echo -e "\n"
  echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${CYAN}Stay Ethical , Hack Strong 🇮🇳  By KK ⌷${RESET}"
  echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  exit
}

# Satellite Animation
spin_one_satellite() {
  logo1="        .-'''-.
       /       \\
      | .--. .--|
      |(_()^(_)|    🛰️
       \\     /
        '-.-'"

  logo2="        .-'''-.
       /       \\
      |(o ) ( o)|
      |   ^^   |    🛰️
       \\__^__/
        '--'"

  logo3="        .-'''-.
       /       \\
      |  ⌐■-■   |
      |   ><   |    🛰️
       \\__..__/
        '--'"

  frames=("$logo1" "$logo2" "$logo3" "$logo2")

  for i in {1..6}; do
    for frame in "${frames[@]}"; do
      clear
      echo -e "${CYAN}$frame${RESET}"
      echo -e "\n   🚀 Launching PayloadForge by Karndeep Baror..."
      sleep 0.25
    done
  done
  clear
}

# Call animation
spin_one_satellite

# Main Interface Placeholder
echo -e "${CYAN}PayloadForge Loaded.${RESET}"
echo -e "${CYAN}Use ./modules/ for payloads (xss.txt, sqli.txt, etc.)${RESET}"
echo -e "${GREEN}Tool by Karndeep Baror | @karndeepbaror 🇮🇳${RESET}"
