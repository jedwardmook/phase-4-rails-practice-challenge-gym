class Client < ApplicationRecord
    has_many :gyms
    has_many :memberships

    def my_memberships
        mem_array = self.memberships.map {|m| m.charge}
        total = mem_array.reduce(:+)
    end
    
end
