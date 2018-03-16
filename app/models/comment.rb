class Comment < ApplicationRecord
  validates :nombre, presence:true
  validates :content, presence:true
  belongs_to :noticium
end
