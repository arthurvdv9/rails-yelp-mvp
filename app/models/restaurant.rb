class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy ##maybe destroy dependent
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, :inclusion=> { :in => ["chinese", "italian", "japanese", "french", "belgian"] } ,allow_blank: false
end
