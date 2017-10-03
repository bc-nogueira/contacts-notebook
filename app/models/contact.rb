class Contact < ApplicationRecord
  validates :name, :email, presence: true
end
