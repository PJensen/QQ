class CreateQqs < ActiveRecord::Migration
  def self.up
    create_table :qqs do |t|
      t.string :name
      t.string :assigned
      t.string :state, :default => "Pending"
      t.float :hours, :default => 0.0
      t.float :price, :default => 0.0
      t.text :notes
      t.boolean :done, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :qqs
  end
end
