class WelcomeController < ApplicationController
  before_action :set_all
  def index

  end

  private
  def set_all
    @noticias = Noticium.order(created_at: :desc)
  end
end
