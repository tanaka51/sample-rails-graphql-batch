class UserFavoritesLoader < GraphQL::Batch::Loader
  def perform(user_ids)
    favorites = Favorite.where(user_id: user_ids)
    favorites.group_by(&:user_id).each do |user_id, favorites|
      fulfill(user_id, favorites)
    end
  end
end
