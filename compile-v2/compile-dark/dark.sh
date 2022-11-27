#!/bin/bash

killall conky	
cd /home/natalie/.config/conky/compile-v2/compile-dark
conky -c dark.conf
