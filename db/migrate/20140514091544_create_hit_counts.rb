class CreateHitCounts < ActiveRecord::Migration
  def self.up
    create_table :hit_counts do |t|
      t.integer "service_id"

      t.timestamps
    end
  end

  def self.down
    drop_table :hit_counts
  end
end
