class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :mobile
      t.string :address
      t.string :email
      t.string :pincode
      t.string :password
      t.string :string

      t.timestamps
    end
  end
end
