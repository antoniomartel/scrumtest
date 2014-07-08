class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :text
      t.boolean :right
      t.string :order
      t.integer :question_id
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end
