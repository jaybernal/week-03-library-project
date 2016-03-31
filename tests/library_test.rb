require "test_helper"
require_relative "../lib/library.rb"

class LibraryTest < Minitest::Test

	def test_invalid_without_branch_name
	l = Library.new(branch_name: "Star City",
									address: "151 N 8th Street\, Suite 500\, Lincoln\, NE 68508",
									phone_number: 402-555-9876)
	assert(l.valid?, "Should be valid at initialization")
	l.branch_name =  nil
	refute(l.valid?, "Should be invalid without a branch name")
	end
end