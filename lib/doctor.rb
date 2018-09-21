class Doctor

  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |apts|
      apts.doctor == self
    end
  end

  def patients
    appointments.map {|item| item.patient}
  end
end
