ActiveAdmin.register Setting do
  index do
	  column :var
	  column :value
	  default_actions
    	end
   form do |f|
      f.inputs "Details" do
      	f.input :var
        f.input :value
      end
      f.buttons
    end
end
