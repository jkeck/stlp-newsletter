class CreateNextSteps < ActiveRecord::Migration
  def change
    create_table :next_steps do |t|
      t.text       :body
      t.text       :steps
      t.references :newsletter
      
      t.timestamps
    end
  end
end
