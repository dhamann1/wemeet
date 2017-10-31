class RemoveDescriptionFromEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :description, :string
  end
end
