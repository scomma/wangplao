class Availability < ActiveRecord::Base
  belongs_to :participant, inverse_of: :availabilities

  attr_accessible :on
end
