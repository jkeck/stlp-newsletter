class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text       :description
      t.string     :link
      t.references :newsletter

      t.timestamps
    end
  end
end
