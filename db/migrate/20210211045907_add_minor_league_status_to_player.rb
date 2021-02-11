class AddMinorLeagueStatusToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :minor_league_status, :boolean
  end
end
