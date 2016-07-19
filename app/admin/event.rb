ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :image, :body
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
form do |f|
	f.inputs "Event" do
	  f.input :title
	  f.input :description
      f.input :image, :as => :file
      # Will preview the image when the object is edited
      f.input :body
  	end
  	f.actions
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
