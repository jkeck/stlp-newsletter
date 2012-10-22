class CreateMiscContents < ActiveRecord::Migration
  def change
    create_table :misc_contents do |t|
      t.string     :title
      t.text       :body
      t.references :newsletter

      t.timestamps
    end
  end
end
