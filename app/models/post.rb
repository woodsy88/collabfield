class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # orders posts in descending order by the creation date,
  #  newest posts are at the top.
  default_scope -> { includes(:user).order(created_at: :desc) }
end
