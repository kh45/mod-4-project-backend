class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :start
      t.string :venue
      t.string :image
      t.string :api_id

      t.timestamps
    end
  end
end
