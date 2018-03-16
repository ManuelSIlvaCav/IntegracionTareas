class Noticium < ApplicationRecord
  validates :bajada, presence: true, length: {maximum: 200}
  validates :titulo, presence: true
  has_many :comments, :dependent => :delete_all

  def truncar
    if cuerpo.length <= 500
      cuerpo
    else
      cuerpo.truncate(500, :separator => ' ') + "..."
    end
  end
end
