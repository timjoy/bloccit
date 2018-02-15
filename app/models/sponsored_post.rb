class SponsoredPost < ApplicationRecord
  belongs_to :topic
  # , dependent: :destroy
  has_many :comments
end
