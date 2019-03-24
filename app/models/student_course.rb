class StudentCourse < ApplicationRecord

    #By convention here they are singular to refrence a one-to-many association
    belongs_to :student
    belongs_to :course

end