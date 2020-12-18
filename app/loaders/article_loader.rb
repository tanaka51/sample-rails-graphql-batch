class ArticleLoader < GraphQL::Batch::Loader
  def perform(ids)
    Article.where(id: ids).each{|a| fulfill(a.id, a)}
  end
end
