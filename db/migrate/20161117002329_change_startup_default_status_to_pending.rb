class ChangeStartupDefaultStatusToPending < ActiveRecord::Migration
  def change
    change_column :startups, :status, :integer, null: false, default: 1
  end
end
