class StaffMember < ActiveRecord::Base

	validates :staff_name, presence: true
	validates :staff_email, presence: true

end