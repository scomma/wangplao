class Calendar < ActiveRecord::Base
  attr_accessible :description, :range_end, :range_start, :title, :token
end
