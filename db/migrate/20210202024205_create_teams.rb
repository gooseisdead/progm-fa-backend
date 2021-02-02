class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.integer :total_salary
      t.float :playoff_discount
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
