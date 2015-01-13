class RegistrationsController < Devise::RegistrationsController
    # Override the action you want here.
    before_filter :set_pagetitle
    def set_pagetitle
		@pagetitle='Learning rails'
	end 
    
end