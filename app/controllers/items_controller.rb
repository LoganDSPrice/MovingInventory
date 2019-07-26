class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  def index
    @items = Item.all
  end

  def show; end

  def new
    @item = Item.new
  end

  def edit; end

  def create
    @item = Item.new(item_params)

    if @item.save
      session[:current_box_id] = @item.box.try(:id) unless @item.box.nil?
      session[:current_house_id] = @item.house.try(:id) unless @item.house.nil?

      redirect_url = @item.box ? box_url(@item.box) : items_url

      respond_to do |format|
        format.html { redirect_to redirect_url, notice: "#{@item.name} was successfully created." }
        format.js { render :create }
      end

    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      session[:current_box_id] = @item.box.try(:id) unless @item.box.nil?
      session[:current_house_id] = @item.house.try(:id) unless @item.house.nil?

      redirect_to @item.box, notice: "#{@item.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: "#{@item.name} was successfully destroyed."
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :box_id)
  end
end
