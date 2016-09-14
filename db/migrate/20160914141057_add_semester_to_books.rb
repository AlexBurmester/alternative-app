class AddSemesterToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :semester_id, :integer
  end
end
