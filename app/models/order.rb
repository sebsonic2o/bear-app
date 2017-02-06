class Order < ActiveRecord::Base

  belongs_to :employee, inverse_of: :orders

  validates :employee, :total_price, :num_units, presence: true
  validates :total_price, :num_units, numericality: { greater_than: 0 }, allow_blank: true
end
