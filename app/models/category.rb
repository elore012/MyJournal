class Category < ApplicationRecord
    belongs_to :user
    has_many :tasks

    validates :categoryname,presence:true,uniqueness:true,length:{minimum:5}
    validates :categorybody,presence:true,uniqueness:true,length:{minimum:5}
    validates :user_id,presence:true
end
