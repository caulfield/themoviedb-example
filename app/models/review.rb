class Review < ActiveRecord::Base
  attr_accessible :body, :title, :movie_id

  validates :body, :title, :movie_id, presence: true
end
