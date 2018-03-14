class AddNoticiumToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :noticium, foreign_key: true
  end
end
