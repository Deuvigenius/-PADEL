class CreateRents < ActiveRecord::Migration[7.2]
  def change
    create_table :rents do |t|
      t.references :padel_court, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
