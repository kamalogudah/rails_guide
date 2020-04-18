class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  include ActiveModel::Validations
  validates_with MyValidator
end
