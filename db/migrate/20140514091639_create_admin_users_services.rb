class CreateAdminUsersServices < ActiveRecord::Migration
  def self.up
    create_table :admin_users_services, :id => false do |t|
      t.integer "admin_user_id"
      t.integer "service_id"
    end
  end

  def self.down
    drop_table :admin_users_services
  end
end
