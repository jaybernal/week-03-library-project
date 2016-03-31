require "test_helper"
require_relative "../lib/staff_member.rb"

class StaffMemberTest < Minitest::Test

	def test_invalid_without_staff_name
		s = StaffMember.new(staff_name: "Jay",
												staff_email: "jjbernal@starcity.com")
		assert(s.valid?, "Should be valid at initialization")
		s.staff_name = nil
		refute(s.valid?, "Should be invalid without a staff name")
	end

	def test_invalid_without_staff_email
		s = StaffMember.new(staff_name: "Jay",
												staff_email: "jjbernal@starcity.com")
		assert(s.valid?, "Should be valid at initialization")
		s.staff_email = nil
		refute(s.valid?, "Should be invalid without a staff email")
	end

end
