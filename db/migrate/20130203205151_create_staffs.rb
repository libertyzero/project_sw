class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.timestamps
    end
  end
end
