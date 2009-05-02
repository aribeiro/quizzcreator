class CreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.integer :user_id, :null => false
      t.string :title
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :phone
      t.datetime :birth

      t.timestamps
    end
  end

  def self.down
    drop_table :subscribers
  end
end
