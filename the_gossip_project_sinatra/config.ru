#Appele le bundler et lit le Gemfile
require 'bundler'
Bundler.require

#Pour lire tous les fichiers du dossier lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'controller'

run ApplicationController