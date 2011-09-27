ActiveAdmin.register Campaign do
	scope :activated
	scope :inactivated
	scope :unreleased
	
	
	filter :name
	filter :created_at
	filter :updated_at
	filter :user_id , :as => :select, :collection => proc { User.all}
	filter :category_id, :as => :select, :collection => proc { Category.all }#, :label => "HI"
	filter :status_id, :as => :select, :collection => proc { Status.all }
	index do
	  column :id#, :sortable => false
	  column :name
	  column "Number Questions" do |campaign|
	  	  campaign.questions.count.to_s	  	  
	  end
	  column "Author" do |campaign|
	  	  campaign.user.email	  	  
	  end
	  column "Status" do |campaign|
	  	  campaign.status.name	  	  
	  end
	  column "Category" do |campaign|
	  	  campaign.category.name	  	  
	  end
	  default_actions
	  #column "Actions" do |campaign|
	  #	link_to "View", admin_post_path(campaign)
	  #	link_to "Edit", admin_post_path(campaign)
	  #	link_to "Destroy", admin_post_path(campaign)
    	  #	end
    	end


end
