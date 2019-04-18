require 'pry'

class Doctor

    attr_reader :name, :appointment, :patient
 
    @@all_doc = []
 
    def initialize(name)
     @name = name
     @@all_doc << self
   end
 
    def self.all
     @@all_doc
   end
 
    def new_appointment(patient, date)
     Appointment.new(patient, self, date)
     #binding.pry 
   end
 
    def appointments
     Appointment.all.select do |appointment|
       appointment.doctor == self
       #binding.pry 
     end
   end
 
    def patients
     appointments.map do |appointment|
       appointment.patients
       #binding.pry 
     end
   end
 
end