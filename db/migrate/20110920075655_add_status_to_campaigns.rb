class AddStatusToCampaigns < ActiveRecord::Migration
  def self.up
  	  add_column :campaigns, :status_id, :integer
  end

  def self.down
  	  remove_column :campaigns, :status_id
  end
end
