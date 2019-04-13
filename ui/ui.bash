#!/bin/bash


# ui functions -->
ui.pause () {
  read -n1 -s -p 'Press any key to continue ...'
  echo ''
}

ui.continue () {
  while read -n1 -s -p 'Continue? [Y/n] '; do
    case ${REPLY:-y} in
      y|Y) echo 'y' && break  ;;
      n|N) echo 'n' && exit 0 ;;
      *)   echo -e '\nWhat?'  ;;
    esac
  done
}

ui.quit () {
  while read -n1 -s -p 'Quit? [Y/n] '; do
    case ${REPLY:-y} in
      y|Y) echo 'y' && exit 0 ;;
      n|N) echo 'n' && break  ;;
      *)   echo -e "\nWhat?"  ;;
    esac
  done
}

ui.yes () {
  while read -n1 -s -p "${*} [Y/n] "; do
    case ${REPLY:-y} in
      y|Y) echo 'y' && return 0 ;;
      n|N) echo 'n' && return 1 ;;
      *)   echo -e '\nWhat?'  ;;
    esac
  done
}

ui.no () {
  while read -n1 -s -p "${*} [N/y] "; do
    case ${REPLY:-n} in
      y|Y) echo 'y' && return 0 ;;
      n|N) echo 'n' && return 1 ;;
      *)   echo -e '\nWhat?'  ;;
    esac
  done
}

ui.debug () {
  if [ $debug ]; then
    [ "${*}" ] && echo "D: ${*}"
    return 0
  fi
  return 1
}
# ui functions <--


## examples ->
#debug=true
#
#if ui.debug; then
#  echo "debug tasks"
#fi
#
#if ui.yes 'Do you want install components?'; then
#  echo "apt-get install -y components"
#fi
## examples <--


## inline examples -->
#read -p 'value? [default] ' && value=${REPLY:-default}
#
#[ "$value" == 'yes' ] && echo 'SUCCESS!' || echo 'FAIL!'
#
#[ $debug ] && echo 'DEBUG message'
## inline examples <--

