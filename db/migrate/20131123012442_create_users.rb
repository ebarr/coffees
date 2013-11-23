class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :roast
      t.string :make_coffee
      t.string :drink_coffee
    end
  end
end
