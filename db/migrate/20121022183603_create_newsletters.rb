class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :session
      t.string :dates
      t.integer :year

      t.timestamps
    end
  end
end
