#!/bin/bash

killall conky
cd $HOME/.config/conky/compile-v2/compile-light
conky -c light.conf
