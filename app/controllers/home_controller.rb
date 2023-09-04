class HomeController < ApplicationController
  def index
    @today_special = Special.find_by(day_of_week: Date.today.wday)
  end
end
