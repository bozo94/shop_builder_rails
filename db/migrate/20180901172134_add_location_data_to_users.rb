class AddLocationDataToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :city, :string
  	add_column :users, :country, :string
  	add_column :users, :twitter_url, :string
  	add_column :users, :website, :string
  	add_column :users, :about_me, :text
  end
end
