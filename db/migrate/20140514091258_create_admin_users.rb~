class CreateAdminUsers < ActiveRecord::Migration
  def self.up
    create_table :admin_users do |t|
      t.string "username", :limit => 30, :null => false
      t.string "password", :limit => 15, :null => false
      t.string "first_name"
      t.string "last_name"

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_users
  end
end
