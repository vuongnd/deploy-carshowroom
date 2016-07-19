ActiveAdmin.register Company do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :logo, :introduction
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
form do |f|
	f.inputs "Company" do
	  f.input :name
      f.input :logo, :as => :file
      # Will preview the image when the object is edited
      f.input :introduction
  end
  f.actions
end
show do |ad|
	attributes_table do
        row :id
      	row :name
      	row :logo do
          image_tag(ad.logo.url(:medium))
        end
        row :introduction

    end
end
controller do
    # This code is evaluated within the controller class
    before_action :checkuser
    def checkuser
      if (current_user.admin == true)
      else
        redirect_to root_path, :notice => "You aren't Admin!"
      end
    end
  end
end
