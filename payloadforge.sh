#!/bin/bash

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🚀 PayloadForge - By Karndeep Baror
# Stay Ethical, Hack Strong 🇮🇳 By KK ⌷
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Colors
CYAN="\033[1;36m"
GREEN="\033[1;32m"
RED="\033[1;31m"
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

# Launch animation
spin_one_satellite

# Main Menu
while true; do
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${CYAN}  🛰️  PayloadForge – Main Menu${RESET}"
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${CYAN}[1] XSS Payloads${RESET}"
  echo -e "${CYAN}[2] SQLi Payloads${RESET}"
  echo -e "${CYAN}[3] LFI Payloads${RESET}"
  echo -e "${CYAN}[4] IDOR Payloads${RESET}"
  echo -e "${CYAN}[5] SSRF Payloads${RESET}"
  echo -e "${CYAN}[6] Exit${RESET}"
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  read -p "Select Option (1-6): " choice

  case $choice in
    1) cat modules/xss.txt ;;
    2) cat modules/sqli.txt ;;
    3) cat modules/lfi.txt ;;
    4) cat modules/idor.txt ;;
    5) cat modules/ssrf.txt ;;
    6) echo -e "\n${GREEN}Stay Ethical , Hack Strong 🇮🇳  By KK ⌷${RESET}"; exit ;;
    *) echo -e "${RED}Invalid Option!${RESET}" ;;
  esac

  echo -e "\nPress enter to return to menu..."
  read
  clear
done
