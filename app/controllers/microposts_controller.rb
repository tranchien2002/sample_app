class MicropostsController < ApplicationController


  def new
    @micropost = Micropost.new
  end

  def create
    if logged_in?
      @micropost = current_user.microposts.build(micropost_params)
      if @micropost.save
        flash[:success] = "Created!"
        redirect_to root_url
      else
        render "static_pages/home"
      end
    else
      @micropost = Micropost.new(micropost_params)
      if @micropost.save
        redirect_to root_url
      else
        render "new"
      end
    end
  end
  def destroy
    Micropost.find(params[:id]).destroy
    flash[:success] = "post deleted"

    redirect_to session[:forwarding_url]
  end

  def index
    @microposts = Micropost.paginate(page: params[:page],per_page: 10)
  end




  private
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
