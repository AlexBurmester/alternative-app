class AddDescriptionsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :description, :text
    add_column :books, :verdict, :text
  end
end
