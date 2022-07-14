class Role < ActiveRecord::Base
    has_many :auditions   

    def actors
        self.auditions.map do |audtion|
            audition.actor 
        end
    end

    def locations
        l = []
        self.auditions.each do |local|
            l << local.location
        end 
    end

    def lead
        lead_roles = self.auditions.filter do |role_filled|
            role_filled.hired == true
        end

        if role_filled > 0
            lead_roles.first
        else
            puts 'no actor has been hired for this role'
        end
    end

    def understudy 
        understudy_roles = self.auditions.filter do |understudy_filled|
            understudy_filled.hired == true
        end

        if understudy_filled > 0
            understudy_roles.second
        else
            puts 'no actor has been hired for understudy for this role'
        end 
    end

end