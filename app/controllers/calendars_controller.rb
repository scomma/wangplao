class CalendarsController < ApplicationController
  def show
    @calendar = Calendar.find_by_token!(params[:id])
  end

  def create
    @calendar = Calendar.create!(params[:calendar])
    redirect_to @calendar
  end
end
