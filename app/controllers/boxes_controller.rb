class BoxesController < ApplicationController
  before_action :set_box, only: %i[show edit update destroy]

  def index
    @boxes = Box.all
  end

  def show; end

  def new
    @box = Box.new
  end

  def edit; end

  def create
    @box = Box.new(box_params)

    if @box.save
      session[:current_house_id] = @box.house_id unless @box.house.nil?
      session[:current_box_id] = @box.id

      redirect_to @box, notice: "Box was successfully created."
    else
      render :new
    end
  end

  def update
    if @box.update(box_params)
      session[:current_house_id] = @box.house_id unless @box.house.nil?
      session[:current_box_id] = @box.id

      redirect_to @box, notice: "Box was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @box.destroy
    session[:current_box_id] = nil

    redirect_to boxes_url, notice: "Box was successfully destroyed."
  end

  private

  def set_box
    @box = Box.find(params[:id])
  end

  def box_params
    params.require(:box).permit(:description, :house_id, :destination_id, :photo)
  end
end
