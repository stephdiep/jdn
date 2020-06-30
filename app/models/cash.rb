class Cash < ApplicationRecord
  validates :value, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ['debit', 'credit'] }
end
