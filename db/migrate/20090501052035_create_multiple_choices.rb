class CreateMultipleChoices < ActiveRecord::Migration
  def self.up
    create_table :multiple_choices do |t|
      t.string :answer
      t.boolean :is_answer
      t.references :question

      t.timestamps
    end
  end

  def self.down
    drop_table :multiple_choices
  end
end
