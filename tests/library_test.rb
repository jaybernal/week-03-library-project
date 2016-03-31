require "test_helper"
require_relative "../lib/library.rb"

class LibraryTest < Minitest::Test

	def test_invalid_without_branch_name
	l = Library.new(branch_name: "Star City",
									address: "151 N 8th Street\, Suite 500\, Lincoln\, NE 68508",
									phone_number: 4025559876)
	assert(l.valid?, "Should be valid at initialization")
	l.branch_name =  nil
	refute(l.valid?, "Should be invalid without a branch name")
	end

def test_invalid_without_branch_address
	l = Library.new(branch_name: "Star City",
									address: "151 N 8th Street\, Suite 500\, Lincoln\, NE 68508",
									phone_number: 4025559876)
	assert(l.valid?, "Should be valid at initialization")
	l.address =  nil
	refute(l.valid?, "Should be invalid without a branch address")
	end

	def test_invalid_without_branch_phone_number
	l = Library.new(branch_name: "Star City",
									address: "151 N 8th Street\, Suite 500\, Lincoln\, NE 68508",
									phone_number: 4025559876)
	assert(l.valid?, "Should be valid at initialization")
	l.phone_number =  nil
	refute(l.valid?, "Should be invalid without a branch phone number")
	end


end