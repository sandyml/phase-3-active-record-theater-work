class Audition < ActiveRecord::Base
 belongs_to :role
 # `Audition#role` returns an instance of role associated with this audition
 # Audition.first.role

 # `Audition#call_back` will change the the hired attribute to `true`
 def call_back
     self.update(hired: true) #recommended
    #  self.hired = true #Audition.last.call_back check then save to make it update and return true from false
    #  self.save #same 
 end
end