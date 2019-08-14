class Restaurant < ApplicationRecord

  has_many :reviews, :dependent => :delete_all

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "My friend, it must be one of those, chinese, italian, japanese, french, belgian" }
end
