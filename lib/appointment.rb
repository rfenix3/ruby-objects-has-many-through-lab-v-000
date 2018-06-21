  # song = appointment, genre = patient, artist = doctor

class Appointment
  attr_accessor :name, :doctor, :patient
  
  @@all = []
  
  def initialize(name, doctor, patient)
    @name = name
    @artist = doctor
    @genre = patient
    @@all << self
  end

  def self.all
    @@all
  end
  
  def appointments
    Appointment.all
  end
  
end