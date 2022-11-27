#!/bin/bash

killall conky	
cd /home/natalie/.config/conky/compile-v2/compile-light
conky -c light.conf
