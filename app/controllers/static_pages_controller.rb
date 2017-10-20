class StaticPagesController < ApplicationController
  def home
    @microposts = Micropost.paginate(page: params[:page], per_page: 10)
    store_location
  end

  def help
  end
end
