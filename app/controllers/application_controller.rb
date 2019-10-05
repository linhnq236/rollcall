class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  private

  def set_time_zone
    Time.zone = current_user.time_zone
  end

end
