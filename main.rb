require_relative "config/environment.rb"

require "active_record"
require "pry"
require "yaml"


require_relative "lib/library.rb"
require_relative "lib/staff_member.rb"
require_relative "lib/book.rb"
require_relative "lib/customer.rb"

binding.pry
