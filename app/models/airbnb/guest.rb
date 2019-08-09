class Guest

    attr_reader :name

    @@guests = []

  def initialize(name)
    @name = name
    @@guests << self
  end

  def self.all 
    @@guests
  end

  
  def trips
    Trip.all.select{|trip| trip.guest == self}  
  end
  
  def listings
    trips.map{|trip|trip.listing}
  end

  def trip_count
    trips.count 
  end

  def self.pro_traveller
  end

  
end
