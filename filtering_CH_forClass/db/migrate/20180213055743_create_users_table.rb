class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :location
  		t.integer :age

  	end
  end
end
