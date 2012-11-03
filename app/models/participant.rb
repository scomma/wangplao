class Participant < ActiveRecord::Base
  belongs_to :calendar, inverse_of: :participants
  has_many :availabilities, inverse_of: :participant

  attr_accessible :name
end
