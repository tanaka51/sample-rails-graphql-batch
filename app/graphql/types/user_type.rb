module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :articles, [Types::ArticleType], null: true
    field :favorites, [Types::FavoriteType], null: true

    def favorites
      UserFavoritesLoader.for.load(object.id)
    end
  end
end
