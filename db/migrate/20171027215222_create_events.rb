class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :time
      t.string :description
      t.string :text
      t.attachment :image
      t.string :type

      t.timestamps
    end
  end
end
