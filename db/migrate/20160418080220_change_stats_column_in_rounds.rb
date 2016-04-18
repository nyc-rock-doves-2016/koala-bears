class ChangeStatsColumnInRounds < ActiveRecord::Migration
  def change
  	change_column :rounds, :stats, :integer
  end
end
