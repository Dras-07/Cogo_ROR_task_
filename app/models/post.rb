class Post < ApplicationRecord
    has_many :comments
    # Other model configurations and validations
    has_many :likes

  end
  