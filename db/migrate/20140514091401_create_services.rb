class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string "service_name", :null => false
      t.string "url_path", :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
