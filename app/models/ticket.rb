class Ticket < ApplicationRecord
  validates :name, presence: true
end
