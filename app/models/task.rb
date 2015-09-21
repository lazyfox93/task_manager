class Task < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :user

  validates_with DateValidator
  validates :priority, numericality: true
  validates :title, presence: true
end
