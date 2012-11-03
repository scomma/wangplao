class ParticipantsController < ApplicationController
  def create
    @calendar = Calendar.find_by_token!(params[:calendar_id])
    @calendar.participants.create!(params[:participant])
    redirect_to @calendar
  end
end
