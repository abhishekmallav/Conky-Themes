#!/bin/bash

killall conky	
cd ~/.config/conky/compile-v1
conky -c conky.conf
