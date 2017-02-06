class Employee < ActiveRecord::Base

  has_many :orders, inverse_of: :employee, dependent: :destroy

  validates :name, :signup_date, presence: true
  validates :name, length: { maximum: 45 }
end
