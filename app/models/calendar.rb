class Calendar < ActiveRecord::Base
  has_many :participants, inverse_of: :calendar

  attr_accessible :description, :range_end, :range_start, :title, :token
end
