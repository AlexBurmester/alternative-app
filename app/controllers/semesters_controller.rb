class SemestersController < ApplicationController
	before_action :find_semester, only: [:show]

  def index
  	@semesters = Semester.all
  end

  def show
		@good_books = @semester.books.where("rating = '2'")
		@bad_books = @semester.books.where("rating = '1'")
		@new_books = @semester.books.where("rating IS NULL")
	end

  private
  def find_semester
		@semester = Semester.find(params[:id])
	end
end
