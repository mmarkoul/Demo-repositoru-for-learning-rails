class AddDefaultUser < ActiveRecord::Migration
  def up
  	if !User.find_by_email('admin@sample.com')
    	User.create(:email => 'admin@sample.com', 
                :password => 'changeme', :password_confirmation => 'changeme')
    end
  end

  def down
  end
end
