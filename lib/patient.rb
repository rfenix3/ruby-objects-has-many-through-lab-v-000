class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(appointment_date, doctor)
    Appointment.new(appointment_date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
end

  describe "#doctors" do
    it "has many doctors through appointments" do
      doctor_who = Doctor.new("The Doctor")
      doctor_what = Doctor.new("Das Doktor")
      hevydevy = Patient.new("Devin Townsend")
      hevydevy.new_appointment(doctor_who, "Friday, January 32nd")
      hevydevy.new_appointment(doctor_what, "Saturday, January 32nd")

      expect(hevydevy.doctors).to include(doctor_who)
      expect(hevydevy.doctors).to include(doctor_what)
    end
  end


