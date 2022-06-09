class PagesController < ApplicationController
  def home
    redirect_to restaurants_path
  end
end
