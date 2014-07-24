class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :facility
      t.string :district
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
