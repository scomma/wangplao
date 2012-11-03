class Participant < ActiveRecord::Base
  belongs_to :calendar, inverse_of: :participants
  has_many :availabilities, inverse_of: :participant

  attr_accessible :name, :availabilities_attributes
  accepts_nested_attributes_for :availabilities, allow_destroy: true

  def to_s
    name
  end
end
