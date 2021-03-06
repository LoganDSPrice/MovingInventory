class HousesController < ApplicationController
  before_action :set_house, only: %i[show edit update destroy]

  def index
    @houses = House.all
  end

  def show; end

  def new
    @house = House.new
  end

  def edit; end

  def create
    @house = House.new(house_params)

    if @house.save
      session[:current_house_id] = @house.id
      redirect_to @house, notice: "House was successfully created."
    else
      render :new
    end
  end

  def update
    if @house.update(house_params)
      redirect_to @house, notice: "House was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @house.destroy
    session[:current_house_id] = nil

    redirect_to houses_url, notice: "House was successfully destroyed."
  end

  private

  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:name)
  end
end
