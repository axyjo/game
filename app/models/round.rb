class Round < ActiveRecord::Base
  validates_presence_of :starts_at

  def duration
    read_attribute(:ends_at) - read_attribute(:starts_at)
  end

  def duration=(time)
    write_attribute(:ends_at, read_attribute(:starts_at) + time)
  end
end
