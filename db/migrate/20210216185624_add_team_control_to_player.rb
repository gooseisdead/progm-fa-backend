class AddTeamControlToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team_control, :string
  end
end
