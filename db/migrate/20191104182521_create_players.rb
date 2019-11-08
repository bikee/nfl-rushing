class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :team, null: false
      t.string :pos, null: false
      t.float :att, null: false
      t.float :att_g, null: false
      t.float :yds, null: false
      t.float :avg, null: false
      t.float :yds_g, null: false
      t.float :td, null: false
      t.string :lng, null: false
      t.float :first, null: false
      t.float :first_perc, null: false
      t.float :plus_20, null: false
      t.float :plus_40, null: false
      t.float :fum, null: false
      t.timestamps
    end
  end
end
