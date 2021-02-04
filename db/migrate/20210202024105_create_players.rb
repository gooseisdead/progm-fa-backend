class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :real_mlb_team
      t.integer :years
      t.float :salary_per_year
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
