class SigninsController < Devise::SessionsController
    # Override the action you want here.
   
    def new
		@pagetitle='Please login'
	end 
    
end