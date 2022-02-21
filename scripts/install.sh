#!/usr/bin/env bash

# Y or N function

yesOrNo() {
  read -r rawResponse

  response=$(echo "$rawResponse" | tr '[:upper:]' '[:lower:]')

  if [[ $response == "yes" || $response == "y" ]]; then
    return 1
  else
    return 0
  fi
}

continueAsk() {
  echo -e "${CYAN}[?]${RESET} Press enter to continue, or press q to quit."
  read -r rawResponse
  response=$(echo "$rawResponse" | tr '[:upper:]' '[:lower:]')
  if [ "$response" == "q" ]; then exit 0; fi
}

# Color variables

GREEN="\x1B[32m"
CYAN="\x1B[36m"
ORANGE="\e[33m"
BOLD="\x1B[1m"
RESET="\x1B[0m"

echo -e "${GREEN}[!]${RESET} Update/Install script started successfully."
echo -e "${CYAN}[!]${RESET} Welcome to the pokeget update/install script."
echo
cd "/tmp" || exit

# User Install/Update

if [[ $USER != "root" ]]; then
  if [ -f "$HOME/.local/bin/pokeget" ]; then
    echo -e "${CYAN}[?]${RESET} Would you like to reset your config file to the newest one? [y/n]"
    echo -e "${ORANGE}[!]${RESET} This will reveal new features but you will have to reconfigure pokeget. Thi will reveal new features but you will have to reconfigure pokeget."
    yesOrNo

    if [[ $? == 1 ]]; then
      rm -rf "$HOME/.config/pokeget"
      echo -e "${GREEN}[!]${RESET} Removed config file."
    fi
    echo

    echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}update${RESET} as ${BOLD}normal user${RESET}."
    continueAsk
  else
    echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}installation${RESET} as ${BOLD}normal user${RESET}."
    continueAsk
  fi

  echo -e "${CYAN}[!]${RESET} Downloading pokeget..."
  wget -q https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
  echo -e "${GREEN}[!]${RESET} Downloaded pokeget."

  echo -e "${CYAN}[!]${RESET} Marking pokeget as executable..."
  chmod +x pokeget

  echo -e "${CYAN}[!]${RESET} Moving pokeget to binary location..."
  mkdir -p "$HOME/.local/bin"
  mv pokeget "$HOME/.local/bin"

  echo -e "${GREEN}[!]${RESET} Done! Run ${BOLD}pokeget help${RESET} to see how to use pokeget!"

# System Install/Update

else
  if [ -f "usr/bin/pokeget" ]; then
    echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}system wide${RESET} ${BOLD}update${RESET}."
  else
    echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}system wide${RESET} ${BOLD}installation${RESET}."
  fi
  continueAsk
  echo -e "${CYAN}[!]${RESET} Downloading pokeget..."
  wget -q https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
  echo -e "${GREEN}[!]${RESET} Downloaded pokeget."

  echo -e "${CYAN}[!]${RESET} Marking pokeget as executable..."
  chmod +x pokeget

  echo -e "${CYAN}[!]${RESET} Moving pokeget to binary location..."
  mv pokeget "/usr/bin"

  echo -e "${GREEN}[!]${RESET} Done! Run ${BOLD}pokeget help${RESET} to see how to use pokeget!"
fi
