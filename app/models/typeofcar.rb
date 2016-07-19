class Typeofcar < ActiveRecord::Base

	belongs_to :company
	has_many :cars, :dependent => :destroy
end
