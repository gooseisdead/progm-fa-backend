class ChangeYearsToBeStringInPlayers < ActiveRecord::Migration[6.0]
  def up
    change_column :players, :years, :string
  end

  def down
    change_column :players, :years, :integer
  end
end
