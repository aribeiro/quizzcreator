class CreateSubscriberQuizzs < ActiveRecord::Migration
  def self.up
    create_table :subscriber_quizzs do |t|
      t.integer :subscriber_id
      t.integer :quizz_id
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriber_quizzs
  end
end
