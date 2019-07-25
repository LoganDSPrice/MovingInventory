class ApplicationController < ActionController::Base
  helper_method :current_house

    def current_house
      @current_house ||= House.find_by(id: session[:current_house_id])
    end
end
