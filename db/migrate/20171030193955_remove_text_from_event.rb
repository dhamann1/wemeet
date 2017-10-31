class RemoveTextFromEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :text, :string
  end
end
