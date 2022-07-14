class Audition < ActiveRecord::Base
    belongs_to :role   

# self gives access to the receiver
    # def role
        # self.role
    # end

    def call_back
        self.hired = true
        self.save
        # @hired = true
    end

end

# a.hired = true 
# a.call_back

# Audition.findby
# # class method - a method you call on a class
# # .new creates a new instance of the class
# a = Audition.new
# # a is the receiver ^ Audition is the reciever
# a.role