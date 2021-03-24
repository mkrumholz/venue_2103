class Venue

  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    patrons_to_yell_at = []
    @patrons.each do |patron|
      patrons_to_yell_at << patron.upcase
    end
    return patrons_to_yell_at
  end

  def over_capacity?
    return true if @patrons.length > @capacity
    false
  end
end
