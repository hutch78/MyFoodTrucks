class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.text :description
      t.string :address_1
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
