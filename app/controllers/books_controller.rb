class BooksController < ApplicationController
	before_action :find_book, only: [:show, :edit, :update]

	def index
		@books = Book.all.order("created_at DESC")
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
	end

	def update
	end

	private

		def find_book
			@book = Book.find(params[:id])
		end
end
