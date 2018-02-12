class PostTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.integer :number
  	end
  end
end
