class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(params[:restaurant].permit(:name))
    redirect_to '/restaurants'
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params[:restaurant].permit(:name))

    redirect_to '/restaurants'
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    flash[:notice] = 'Restaurant deleted successfully'
    redirect_to '/restaurants'
  end

end

# iterm

# bin/rails g migration add_promoted_to_restaurants promoted:boolean

# bin/rake db:migrate

# psql yelp_clone_development

# \d restaurants

# \q
