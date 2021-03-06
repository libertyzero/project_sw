class DetailRoom < ActiveRecord::Base
  attr_accessible :roomname, :amount ,:room_type

  def self.all_types
    ["auditorium","classroom"]
  end


  validates :roomname,  :presence => true
  validates :amount,  :presence => true
  validates :room_type,  :presence => true

  def self.find_with_type(t)
    free = DetailRoom.find_all_by_room_type(t)
    free_result = []
    free.each do |i|
      rooms = Room.find_all_by_roomname(i.roomname)
      rooms.each do |j|
        free_result.push(j)
      end
    end
    return free_result
  end
end
