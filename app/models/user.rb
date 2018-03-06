class User < ApplicationRecord
  before_save { self.email = email.downcase if email.present? }

  namesplit = name.split(" ")
  namesplitcap = []
  namesplitcap.push namesplit[0].capitalize
  if namesplit[1] then
    namesplitcap.push namesplit[1].capitalize
  end
  before_save  {self.name = namesplitcap.join(" ") if name.present? }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
end
