class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :name
      t.string :permalink
      t.timestamps
    end
    add_index("services", "permalink")
  end

  def self.down
    drop_table :services
  end
end
