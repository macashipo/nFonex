class AddCampaignToParticipants < ActiveRecord::Migration
  def self.up
    add_column :participants, :campaign_id, :integer
  end

  def self.down
    remove_column :participants, :campaign_id
  end
end
