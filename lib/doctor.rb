class Doctor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment
    appt = Appointment.new(self)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    patients = []
    appointments.each do |appt|
      patients << appt.patient
    end
    patients
  end
end
