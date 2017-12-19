class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :text
      t.string :translation
      t.integer :language_id

      t.timestamps
    end
  end
end
