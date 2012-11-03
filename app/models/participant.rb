class Participant < ActiveRecord::Base
  belongs_to :calendar, inverse_of: :participants

  attr_accessible :name
end
