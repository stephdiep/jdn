class Cash < ApplicationRecord
  validates :value, presence: true, numericality: { greater_than: 0.01 }
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ['debit', 'credit'] }
end
