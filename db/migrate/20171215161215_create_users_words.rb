class CreateUsersWords < ActiveRecord::Migration[5.1]
  def change
    create_table :users_words do |t|
      t.integer :user_id
      t.integer :word_id

      t.timestamps
    end
  end
end
