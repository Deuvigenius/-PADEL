class CreatePadelCenters < ActiveRecord::Migration[7.2]
  def change
    create_table :padel_centers do |t|
      t.string :name
      t.string :address
      t.integer :number_of_court
      t.string :phone_number
      t.float :rating
      t.references :user, null: false, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
