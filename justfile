#!/usr/bin/env -S just --justfile

set windows-shell := ["powershell"]
set shell := ["bash", "-cu"]

_default:
  @just --list -u

alias r := ready

ready:
  just check

check:
  cargo check --all-features
