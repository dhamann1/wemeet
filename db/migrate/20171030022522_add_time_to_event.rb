class AddTimeToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :time, :datetime
  end
end
