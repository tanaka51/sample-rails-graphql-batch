class UserFavoritesCountLoader < GraphQL::Batch::Loader
  def perform(user_ids)
    Favorite.where(user_id: user_ids).group(:user_id).count.each do |user_id, count|
      fulfill(user_id, count)
    end
  end
end
