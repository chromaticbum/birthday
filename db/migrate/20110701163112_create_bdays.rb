class CreateBdays < ActiveRecord::Migration
  def self.up
    create_table :bdays do |t|
      t.date :my_date

      t.timestamps
    end
  end

  def self.down
    drop_table :bdays
  end
end
