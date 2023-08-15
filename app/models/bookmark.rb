class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 1 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "already bookmarked in this list" }

end
