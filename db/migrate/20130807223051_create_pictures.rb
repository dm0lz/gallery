class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :image
      t.references :album, index: true

      t.timestamps
    end
  end
end
