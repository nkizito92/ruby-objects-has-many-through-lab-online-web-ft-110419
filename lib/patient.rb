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
  
  def new_appointment(doctor, date)
     Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    Appointment.all.select {|apponint| apponint.patient == self}
  end 
  
  def doctors 
    appointments.collect {|app| app.doctor }
  end 
  
end 