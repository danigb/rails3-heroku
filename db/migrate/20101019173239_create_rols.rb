class CreateRols < ActiveRecord::Migration
  def self.up
    create_table :rols do |t|
      t.string :name, :null => false, :limit => 16
      t.references :participant
      t.timestamps
    end
  end

  def self.down
    drop_table :rols
  end
end
