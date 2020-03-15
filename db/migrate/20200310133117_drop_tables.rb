class DropTables < ActiveRecord::Migration[6.0]
  def change
    remove_reference :classifications, :categories
    remove_reference :classifications, :posts
    drop_table :classifications
    drop_table :categories
  end
end
