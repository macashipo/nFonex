ActiveAdmin.register User do
  index do
	  column :id
	  column :name
	  column :email
	  default_actions
    	end
    form do |f|
      f.inputs "Details" do
      	f.input :name
        f.input :email
        f.input :password
      end
      f.buttons
    end
end
