module ArticlesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_article_comments_url
    elsif action_name == 'edit'
      articles_url
    end
  end
end
