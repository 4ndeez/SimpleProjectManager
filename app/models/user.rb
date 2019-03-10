class User < ApplicationRecord
  has_many :members
  has_many :groups, through: :members
  has_many :projects, through: :members

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { user: 0, moderator: 1, admin: 2 }
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
