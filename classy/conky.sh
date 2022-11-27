#!/bin/bash

killall conky

cd ~/.config/conky/classy
conky -c conky.conf
