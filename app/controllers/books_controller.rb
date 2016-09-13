class BooksController < ApplicationController
	before_action :find_book, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.all.order("created_at DESC")
		@good_books = Book.where("rating = '3'")
		@bad_books = Book.where("rating = '1'")
		@new_books = Book.where("rating IS NULL")
	end

	def show
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to book_path(@book)
		end
	end

	def edit
	end

	def update
		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			render "edit"
		end
	end

	def destroy
		@book.delete
		redirect_to books_path
	end

	private

		def book_params
			params.require(:book).permit(:title, :author, :description, 
																	 :rating, :verdict, :book_img)
		end

		def find_book
			@book = Book.find(params[:id])
		end
end
