class AddFeedToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :image, :text
  end
end
