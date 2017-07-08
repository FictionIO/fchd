#!/bin/sh


# Install Linuxbrew

test -d $HOME/.linuxbrew/bin || git clone https://github.com/Linuxbrew/brew.git $HOME/.linuxbrew
PATH="$HOME/.linuxbrew/bin:$PATH"
echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >>~/.bash_profile
export MANPATH="$(brew --prefix)/share/man/:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"


# Update

brew update
brew --version


# Install Buck

brew tap facebook/fb

if brew ls --version buck > /dev/null; then
	brew install --HEAD buck
else 
	brew outdated buck || brew upgrade buck

buck --version


# Install Buckaroo

if brew ls --version loopperfect/lp/buckaroo > /dev/null; then
	brew install --HEAD loopperfect/lp/buckaroo
else
	brew outdated loopperfect/lp/buckaroo || brew upgrade loopperfect/lp/buckaroo