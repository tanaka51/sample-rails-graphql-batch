module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :articles, [Types::ArticleType], null: true
    field :favorites, [Types::FavoriteType], null: true
    field :favorites_count, Integer, null: true

    def favorites
      UserFavoritesLoader.for.load(object.id)
    end

    def favorites_count
      UserFavoritesCountLoader.for.load(object.id)
    end
  end
end
