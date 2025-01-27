class CreateCenterReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :center_reviews do |t|
      t.references :padel_center, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :star
      t.string :description

      t.timestamps
    end
  end
end
