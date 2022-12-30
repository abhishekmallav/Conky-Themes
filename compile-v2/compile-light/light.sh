#!/bin/bash

killall conky
cd ~/.config/conky/compile-v2/compile-light
conky -c light.conf
