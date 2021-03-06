require 'bundler'
require 'tty-prompt'
require 'colorize'
Bundler.require

require_all 'app/models'
include DesignModule

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
