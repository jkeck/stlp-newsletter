class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text       :quote
      t.string     :author
      t.references :newsletter

      t.timestamps
    end
  end
end
