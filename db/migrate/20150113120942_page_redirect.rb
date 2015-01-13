class PageRedirect < ActiveRecord::Migration
  def up
  	add_column :pages, :redirect, :boolean
  	add_column :pages, :action_name, :string
  	add_column :pages, :controller_name, :string
  end

  def down
  	remove_column :pages, :redirect
  	remove_column :pages, :action_name
  	remove_column :pages, :controller_name
  end
end
