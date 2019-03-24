class StudentCoursesController < ApplicationController

    def create
        course_to_add = Course.find(params[:course_id])
        # we use the @current user from the parent class
        # to check if the user is already enrolled or not
        unless @current_user.courses.include?(course_to_add)
            StudentCourse.create(course: course_to_add, student: current_user)
            flash[:notice] = "You have succesfully enroll in #{course_to_add.name}"
            redirect_to current_user
        else
            flash[:notice] = "Something was wrong with your enrollment"
            redirect_to(root_path)
        end
    end

end