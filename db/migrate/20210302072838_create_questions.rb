class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :version
      t.json :question
      t.boolean :active

      t.timestamps
    end
  end
end
