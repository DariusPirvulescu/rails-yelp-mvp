class PagesController < ApplicationController
  def home
    redirect_to restaurants_path
  end

  def backdoor
  end
end
