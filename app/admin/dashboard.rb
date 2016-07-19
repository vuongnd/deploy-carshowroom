ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end

    columns do
      column do
        panel "Contacts news" do
           ul do
             Contact.order("created_at DESC").limit(5).map do |contact|
              li link_to(contact.email, admin_contact_path(contact))
             end
           end
        end
      end
      column do
        panel "Event news" do
           ul do
             Event.order("created_at DESC").limit(5).map do |event|
              li link_to(event.title, admin_event_path(event))
             end
           end
        end
      end  
       column do
        panel "Company news" do
           ul do
             Company.order("created_at DESC").limit(3).map do |company|
              li link_to(company.name, admin_company_path(company))
             end
           end
        end
      end 
    end
  end # content
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

