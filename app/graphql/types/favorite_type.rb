module Types
  class FavoriteType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType, null: true
    field :article, Types::ArticleType, null: true

    def article
      ArticleLoader.for.load(object.article_id)
    end
  end
end
