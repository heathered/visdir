class ListingsController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index
    session[:fav] ||= []
    @pros = Listing.includes(:user).where('users.pro = true').reverse
    @listings = Listing.includes(:user).where('users.pro = false')
  end
  
  def new
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.new(params[:listing])
    
    if @listing.save
      redirect_to root_path
    else
      render "new"
    end
  end
  
  def fav
    if session[:fav].include?(params[:id].to_i)
      session[:fav].delete(params[:id].to_i)
    else
      session[:fav].push(params[:id].to_i)
    end
    
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end
  
  def favs
    @pros = []
    @listings = Listing.includes(:user).find(session[:fav])
  end
  
end
