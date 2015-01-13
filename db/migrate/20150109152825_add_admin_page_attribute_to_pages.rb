class AddAdminPageAttributeToPages < ActiveRecord::Migration
  def up
    add_column :pages, :admin, :boolean
    
    @pages = Page.find(:all)
    @pages.each do |page|
      page.update_attribute(:admin, false)
    end
    
  end

  def down
    remove_column :pages, :admin
  end
end
