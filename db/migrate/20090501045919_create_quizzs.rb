class CreateQuizzs < ActiveRecord::Migration
  def self.up
    create_table :quizzs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :quizzs
  end
end
