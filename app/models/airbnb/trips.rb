class Trip
  attr_reader :name, :guest, :listing

  @@trips = []

  def initialize(name, guest, listing)
    @name = name
    @guest = guest
    @listing = listing
    @@trips << self
  end

  def self.all 
    @@trips
  end

end
