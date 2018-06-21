  # song = appointment, genre = patient, artist = doctor

class Appointment
  attr_accessor :name, :doctor, :patient
  
  @@all = []
  
  def initialize(name, doctor, patient)
    @date = Monday, August 1st"
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