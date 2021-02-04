class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :years
      t.float :salary_per_year
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
