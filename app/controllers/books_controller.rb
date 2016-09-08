class BooksController < ApplicationController
	before_action :find_book, only: [:show]

	def index
		@books = Book.all.order("created_at DESC")
	end

	def show
	end

	private

		def find_book
			@book = Book.find(params[:id])
		end
end
