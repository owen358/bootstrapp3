class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.string :name
      t.date :dob
      t.string :q1
      t.string :q2
      t.string :q3
      t.text :q4
      t.text :q5
      t.text :q6
      t.boolean :q7
      t.boolean :q8
      t.boolean :q9
      t.integer :q10
      t.integer :q11
      t.integer :q12

      t.timestamps
    end
  end
end
