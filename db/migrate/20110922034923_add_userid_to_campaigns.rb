class AddUseridToCampaigns < ActiveRecord::Migration
  def self.up
    add_column :campaigns, :user_id, :integer
  end

  def self.down
    remove_column :campaigns, :user_id
  end
end
