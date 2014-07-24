class CreateHits < ActiveRecord::Migration
  def self.up
    create_table :hits do |t|
      t.integer :service_id
      t.string :hit_time, :default => "#{Time.now}"
    end
  end

  def self.down
    drop_table :hits
  end
end
