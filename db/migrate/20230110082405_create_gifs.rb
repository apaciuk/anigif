class CreateGifs < ActiveRecord::Migration[7.0]
  def change
    create_table :gifs, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.text :image_data, null: false, default: ''

      t.timestamps
    end
  end
end
