require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name
begin
    puts patient_contact_info
rescue NameError
    puts "you are attempting to print an undefined variable"
end
puts new_patient.patient_status(:coma)
begin
    puts new_patient.patient_currently_admitted?
rescue ArgumentError
    puts "Ughhhhhhhh"
end
puts new_patient.patient_new_total(125)
begin
new_patient.add_med_to_list("lipitor", 123.12)
rescue ArgumentError
    puts "Never allowing that."
end
begin
new_patient.patient_medications_list
rescue RuntimeError
    puts "Nooooo"
end