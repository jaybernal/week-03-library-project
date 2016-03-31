require "test_helper"
require_relative "../lib/book.rb"

class BookTest < Minitest::Test

	def test_should_be_invalid_without_title
		b = Book.new(title: "Learn to Program",
								author: "Chris Pine",
								isbn: "085-2766001766")
		assert(b.valid?, "Should be valid at initialization")
		b.title = nil
		refute(b.valid?, "Should be invalid without a book title")
	end
	def test_should_be_invalid_without_author
		b = Book.new(title: "Learn to Program",
								author: "Chris Pine",
								isbn: "085-2766001766")
		assert(b.valid?, "Should be valid at initialization")
		b.author = nil
		refute(b.valid?, "Should be invalid without a book author")
	end
	def test_should_be_invalid_without_isbn
		b = Book.new(title: "Learn to Program",
								author: "Chris Pine",
								isbn: "085-2766001766")
		assert(b.valid?, "Should be valid at initialization")
		b.isbn = nil
		refute(b.valid?, "Should be invalid without a book ISBN")
	end

end