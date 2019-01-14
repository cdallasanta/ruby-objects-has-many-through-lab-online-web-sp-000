class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patient = self}
  end

  def doctors
    doctors = []
    appointments.each{|appt| doctors << appt.doctor}
    doctors
  end
end
