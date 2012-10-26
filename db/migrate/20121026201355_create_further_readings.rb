class CreateFurtherReadings < ActiveRecord::Migration
  def change
    create_table :further_readings do |t|
      t.string     :url
      t.text       :description
      t.references :newsletter

      t.timestamps
    end
  end
end
