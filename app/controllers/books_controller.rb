class BooksController < ApplicationController
	before_action :find_book, only: [:show, :edit, :update]

	def index
		@books = Book.all.order("created_at DESC")
	end

	def show
	end

	def new
		@book = Book.new
	end

	def edit
	end

	def create
		@book = Book.new(book_params)
	end

	def update
	end

	private

		def book_params
			params.require(:book).permit(:title, :author, :description, :rating, :verdict)
		end

		def find_book
			@book = Book.find(params[:id])
		end
end
