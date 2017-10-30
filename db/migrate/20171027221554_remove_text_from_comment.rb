class RemoveTextFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :text, :string
  end
end
