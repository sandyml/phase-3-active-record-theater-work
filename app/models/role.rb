class Role < ActiveRecord::Base
 has_many :auditions
#  has_many :auditions, dependent: :destroy
# `Role#auditions` returns all of the auditions associated with this role 

# `Role#actors` returns an array of names from the actors associated with this role
# pry(main)> Role.first.actors
# pry(#<Role>)> self.auditions.map {|audition| audition.actor}
 def actors 
    #  auditions.pluck(:actor)
   #  self.auditions.map do |audition|
   #      audition.actor
   #  end
   self.auditions.map {|audition| audition.actor}
 end

# `Role#locations` returns an array of locations from the auditions associated with this role
#  Role.first.locations
#  pry(#<Role>)> self.auditions.map {|audition| audition.location}
 def locations
    #  auditions.pluck(:location)
   #  self.auditions.map do |audition|
   #      audition.location
   #  end
   self.auditions.map {|audition| audition.location}
   # binding.pry
 end

# `Role#lead` returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
 def lead
    #  if auditions.where(hired: true).length > 0
    #      auditions.where(hired: true)[0]
    #  else
    #      "no actor has been hired for this role"
    #  end
    self.auditions.find_by(hired: true) || "no actor has been hired for this role"
 end

 def understudy
    #  if auditions.where(hired: true).length > 1
    #          auditions.where(hired: true)[1]
    #  else
    #      "no actor has been hired for understudy for this role"
    #  end
    self.auditions.where(hired: true).second ||  'no actor has been hired for understudy for this role'
 end
end