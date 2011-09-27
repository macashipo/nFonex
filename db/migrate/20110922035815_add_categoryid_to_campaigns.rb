class AddCategoryidToCampaigns < ActiveRecord::Migration
  def self.up
    add_column :campaigns, :category_id, :integer
  end

  def self.down
    remove_column :campaigns, :category_id
  end
end
