ActiveAdmin.register Car do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :name, :image, :year, :prices, :madein, :color, :max_speed, :fuel_consumption, :engine_capacity, :acceleration, :wheel_size, :braking_system, :safety_system, :typeofcar_id

form do |f|
	f.inputs "Company" do
	  f.input :name
      f.input :image, :as => :file
      # Will preview the image when the object is edited
      f.input :year
      f.input :prices
      f.input :madein
      f.input :color
      f.input :max_speed
      f.input :fuel_consumption
      f.input :engine_capacity
      f.input :acceleration
      f.input :wheel_size
      f.input :braking_system
      f.input :safety_system
      f.input :typeofcar_id, :as => :select, :collection => Typeofcar.all.collect {|type| [type.name, type.id] }
  end
  f.actions
end
show do |ad|
	attributes_table do
        row :id
      	row :name
      	row :image do
          image_tag(ad.image.url(:medium))
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
