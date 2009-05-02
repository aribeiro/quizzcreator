class CreateUserSubscribers < ActiveRecord::Migration
  def self.up
    create_table :user_subscribers do |t|
      t.integer :user_id
      t.integer :subscriber_id
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :user_subscribers
  end
end
