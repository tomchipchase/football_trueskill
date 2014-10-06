# coding: utf-8

source "https://rubygems.org"

gem 'hold'
gem 'lotus-router'
gem 'require_all'

platform :jruby do
  gem 'jdbc-sqlite3'
  gem 'torqbox'
end

platform :mri do
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'rspec-mocks'
  gem 'fabrication'
  gem 'faker'
end

group :development do
  gem 'shotgun'
  gem 'pry'
  gem 'guard'
  gem 'guard-rspec'
end
