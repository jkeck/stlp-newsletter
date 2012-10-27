class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string     :image_url
      t.text       :caption
      t.references :newsletter

      t.timestamps
    end
  end
end
