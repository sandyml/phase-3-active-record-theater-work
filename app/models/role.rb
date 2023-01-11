class Role < ActiveRecord::Base
 has_many :auditions
#  has_many :auditions, dependent: :destroy
# `Role#auditions` returns all of the auditions associated with this role 

 def actors 
    #  auditions.pluck(:actor)
    self.auditions.map do |audition|
        audition.actor
    end
 end

 def locations
    #  auditions.pluck(:location)
    self.auditions.map do |audition|
        audition.location
    end
 end

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