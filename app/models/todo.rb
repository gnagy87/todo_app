class Todo < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :title, length: { in: 1..30 }
  validates :title, uniqueness: { case_sensitive: false }
  validates :description, presence: true
end
