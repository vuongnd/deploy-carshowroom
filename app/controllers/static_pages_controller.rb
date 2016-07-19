class StaticPagesController < ApplicationController
	def landing
    end
    def home
    	@cars = Car.order("created_at DESC").limit(4)
    end
    def faq
    	@contact = Contact.order("created_at DESC").limit(10)
    end
end
