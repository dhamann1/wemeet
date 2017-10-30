class RemoveContentFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :content, :string
  end
end
