#!/usr/bin/env bash
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
