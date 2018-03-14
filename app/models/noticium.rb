class Noticium < ApplicationRecord
  validates :bajada, presence: true, length: {maximum: 200}
  has_many :comments, :dependent => :delete_all
end
