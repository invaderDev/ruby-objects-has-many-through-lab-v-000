class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |app|
      app.patient
    end
  end

end