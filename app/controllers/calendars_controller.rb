class CalendarsController < ApplicationController
  def index
    mock_range = (Date.today - 3.days)...(Date.today + 3.days)
    @availabilities = mock_range.map do |date|
      Availability.new :on => date
    end
  end

  def show
    @title = "title"
    @description = "description"
  end

  def create
  end
end
