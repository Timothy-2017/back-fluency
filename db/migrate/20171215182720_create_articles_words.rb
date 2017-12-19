class CreateArticlesWords < ActiveRecord::Migration[5.1]
  def change
    create_table :articles_words do |t|
      t.integer :article_id
      t.integer :word_id

      t.timestamps
    end
  end
end
