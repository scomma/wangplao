class Calendar < ActiveRecord::Base
  has_many :participants, inverse_of: :calendar
  has_many :availabilities, through: :participants

  validates_presence_of :range_start, :range_end

  before_create :generate_token

  attr_accessible :description, :range_end, :range_start, :title

  def to_s
    title.presence || "Calendar"
  end

  def to_param
    token
  end

private
  def generate_token
    self.token = SecureRandom.hex(3)
  end
end
