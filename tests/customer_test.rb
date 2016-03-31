require "test_helper"
require_relative "../lib/customer.rb"


class CustomerTest < Minitest::Test

	def should_be_invalid_without_customer_name
		c = Customer.new(	customer_name: "Melissa",
											customer_email: "melissa@gmail.com")
		assert(c.valid?, "This should be valid at initialization")
		c.customer_name = nil
		refute(c.valid?, "Should be invalid without customer name") 
	end

	def should_be_invalid_without_customers_email
		c = Customer.new(	customer_name: "Melissa",
											customer_email: "melissa@gmail.com")
		assert(c.valid?, "This should be valid at initialization")
		c.customer_email = nil
		refute(c.valid?, "Should be invalid without customer's emails address") 
	end


end