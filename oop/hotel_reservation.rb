# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation1 = HotelReservation.new(customer_name: "John Booth", date: "July 3rd", room_number: 613)

p reservation1

reservation1.room_number = 415

reservation1.add_a_fridge

reservation1.add_a_crib

reservation1.add_a_custom_amenity("microwave")

if reservation1.room_number == 415 && reservation1.amenities.include?("fridge") && reservation1.amenities.include?("crib") && reservation1.amenities.include?("microwave")
  result = "PASS"
else
  result = "F"
end

puts result

reservation2 = HotelReservation.new(customer_name: "Peter Pan", date: "January 15th", room_number: 708)

p reservation2

reservation2.room_number = 316

reservation2.add_a_fridge

reservation2.add_a_crib

reservation2.add_a_custom_amenity("microwave")

if reservation2.room_number == 316 && reservation2.amenities.include?("fridge") && reservation2.amenities.include?("crib") && reservation2.amenities.include?("microwave")
  result = "PASS"
else
  result = "F"
end

puts result