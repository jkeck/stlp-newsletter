class CreateMainContents < ActiveRecord::Migration
  def change
    create_table :main_contents do |t|
      t.string     :image
      t.text       :body
      t.boolean    :body_overlay
      t.references :newsletter

      t.timestamps
    end
  end
end
