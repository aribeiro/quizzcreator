class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.text :description
      t.float :weight
      t.string :question_type
      t.references :quizz

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
