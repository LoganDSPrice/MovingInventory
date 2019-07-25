class ApplicationController < ActionController::Base
  helper_method :current_house
  helper_method :current_box

  def current_house
    @current_house ||= House.find_by(id: session[:current_house_id])
  end

  def current_box
    @current_box ||= Box.find_by(id: session[:current_box_id])
  end
end
