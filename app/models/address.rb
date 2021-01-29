class Address < ApplicationRecord
  belongs_to :user, optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # validates :postcode, :prefecture, :city, :block ,presence: true
  validates :postcode, presence: true,
  format: { with: /\A[0-9]{3}-[0-9]{4}\z/}
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :block, presence: true

end
