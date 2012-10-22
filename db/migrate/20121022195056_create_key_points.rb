class CreateKeyPoints < ActiveRecord::Migration
  def change
    create_table :key_points do |t|
      t.text       :description
      t.text       :points
      t.references :newsletter

      t.timestamps
    end
  end
end
