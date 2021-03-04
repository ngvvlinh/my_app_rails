class Article < ApplicationRecord
  has_many :comments

  def self.search(search)
    if search
      article_type= Article.find_by(title: search)
       if article_type
        self.where(id: article_type)
       else
         @article_search = Article.all
       end
    else
      @article_search = Article.all
    end
  end
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
