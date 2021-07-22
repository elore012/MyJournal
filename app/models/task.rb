class Task < ApplicationRecord
   
    belongs_to :category

    validates :taskname,presence:true,uniqueness:true,length:{minimum:5}
    validates :taskbody,presence:true,uniqueness:true,length:{minimum:5}
    
   
end
