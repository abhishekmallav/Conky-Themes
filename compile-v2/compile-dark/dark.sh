#!/bin/bash

killall conky	
cd ~/.config/conky/compile-v2/compile-dark
conky -c dark.conf
