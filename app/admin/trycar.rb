ActiveAdmin.register Trycar do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :old, :address, :phone, :driver_license, :car_id, :fee_trial
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

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
