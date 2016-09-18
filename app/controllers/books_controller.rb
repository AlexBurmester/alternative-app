class BooksController < ApplicationController
	before_action :find_book, only: [:show, :edit, :update, :destroy]
	before_action :check_admin, only: [:new, :create, :edit, :update, :destroy]

	def index
	end

	def show
		if @book.rating == 2
			@rate = "success"
			@recommend = "Meget vigtig"
			@glyph = "ok"
		elsif @book.rating == 1
			@rate = "danger"
			@recommend = "Unødvendig"
			@glyph = "remove"
		else
			@rate = "warning"
			@recommend = "Rar at have"
			@glyph = "record"
		end
	end

	def new
		@book = Book.new
		@semesters = Semester.all.map { |s| [s.id, s.id] }
	end

	def create
		@book = Book.new(book_params)
		@book.semester_id = params[:semester_id]
		@book.rating = params[:rating]

		if @book.save
			redirect_to book_path(@book)
		end
	end

	def edit
		@semesters = Semester.all.map { |s| [s.id, s.id] }
	end

	def update

		if @book.update(book_params)
			redirect_to book_path(@book)
			@book.rating = params[:rating]
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
																	 :rating, :verdict, :book_img,
																	 :semester_id)
		end

		def find_book
			@book = Book.find(params[:id])
		end

		def check_admin
			unless current_user && current_user.admin?
				flash[:danger] = "Du har ikke adgang til denne side."
				redirect_to root_path
			end
		end
end
