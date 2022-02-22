class Usuario < ApplicationRecord
    has_many :mentors, class_name: "object", foreign_key: "reference_id"    
    has_many :socialnetworks, class_name: "object", foreign_key: "reference_id"    
    has_many :expertises, class_name: "object", foreign_key: "reference_id" 
    has_many :abilities, class_name: "object", foreign_key: "reference_id"    
    has_many :places, class_name: "object", foreign_key: "reference_id"    

end
