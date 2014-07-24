class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name, :limit => 15
      t.string :last_name, :limit => 15
      t.string :username, :limit => 15
      t.string :password_hash
      t.string :password_salt
      t.string :email, :limit => 30

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
