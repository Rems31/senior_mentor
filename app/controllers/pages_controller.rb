class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  def home
  end
end
