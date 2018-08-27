class AddArticleToFeeds < ActiveRecord::Migration[5.1]
  def change
    add_reference :feeds, :article, foreign_key: true
  end
end
