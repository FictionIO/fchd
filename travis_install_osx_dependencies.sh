#!/bin/sh

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