require 'pry'

class Patient

    attr_reader :name, :appointment, :doctor

    @@all = []
 
    def initialize(name)
     @name = name
     @@all << self 
   end

   def self.all
    @@all       
   end 
 
    def new_appointment(doctor, date)
     Appointment.new(self, doctor, date)
     #binding.pry 
   end
 
    def appointments
     Appointment.all.select do |appointment|
       appointment.patient == self
       #binding.pry 
     end
   end
 
    def doctors
     Appointment.all.map do |appointment|
       appointment.doctor
       #binding.pry 
     end
   end
 end