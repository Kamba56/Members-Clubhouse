class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :text, presence: true
end
