#!/usr/bin/env bash

#Build dependencies 

install="pacman -S"
echo Using $install as install command

$install nodejs \
	npm \
	jedi-language-server \
	clang \
	cmake \
	jdk-openjdk \
	python-pip \
	vim
	
