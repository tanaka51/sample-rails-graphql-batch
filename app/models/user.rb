class User < ApplicationRecord
  has_many :favorites
  has_many :articles
end
