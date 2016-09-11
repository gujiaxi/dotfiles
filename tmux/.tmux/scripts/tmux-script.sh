#!/bin/bash

# exit the script if any statement returns a non-true return value
set -e

maximize_pane() {
  tmux -q -L swap-pane-test -f /dev/null new-session -d \; new-window \; new-window \; swap-pane -t :1 \; kill-session || { tmux display 'your tmux version has a buggy swap-pane command - see ticket #108, fixed in upstream commit 78e783e'; exit; }
  __current_pane=$(tmux display -p '#{pane_id}')

  __dead_panes=$(tmux list-panes -s -F '#{pane_dead} #{pane_id} #{pane_start_command}' | grep -o '^1 %.\+maximized.\+$' || true)
  __restore=$(echo "${__dead_panes}" | sed -n -E -e "s/^1 ${__current_pane} .+maximized.+(%[0-9]+)$/tmux swap-pane -s \1 -t ${__current_pane} \; kill-pane -t ${__current_pane}/p" -e "s/^1 (%[0-9]+) .+maximized.+${__current_pane}$/tmux swap-pane -s \1 -t ${__current_pane} \; kill-pane -t \1/p" )

  if [ x"${__restore}" = x ] ; then
    [ x"$(tmux list-panes | wc -l | sed 's/^ *//g')" = x1 ] && tmux display "Can't maximize with only one pane" && return
    __window=$(tmux new-window -P "exec maximized...& tmux setw remain-on-exit on; clear; tmux clear-history; printf 'Pane has been maximized, press <prefix>+ to restore. %s' \\${__current_pane};")
    __window=${__window%.*}

    __guard=50
    while ( [ x"$(tmux list-panes -t ${__window} -F '#{session_name}:#{window_index} #{pane_dead}')" != x"${__window} "1 ] && [ x"${__guard}" != x0 ] ) ; do sleep 0.01 ; __guard=$((__guard - 1)); done
    if [ x"${__guard}" = 0 ] ; then
      exit 1
    fi

    __new_pane=$(tmux display -p '#{pane_id}')
    tmux setw remain-on-exit off \; swap-pane -s "${__current_pane}" -t "${__new_pane}"
  else
    ${__restore} || tmux kill-pane
  fi
}

toggle_mouse() {
  old=$(tmux show -g | grep "mouse " | cut -d' ' -f2)
  new=""

  if [ "$old" = "on" ] ; then
    new="off"
  else
    new="on"
  fi

  tmux set -g mouse $new \;\
       bind-key -T root WheelUpPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; copy-mode -e; send-keys -M" \;\
       bind-key -T root WheelDownPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; send-keys -M" \;\
       display "mouse: $new"
}


$@
