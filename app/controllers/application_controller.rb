class ApplicationController < ActionController::Base

    # helper_method allows these methods bieng seen by the views
    helper_method :current_user, :logged_in?

    def current_user
        # it verifies if there's an user with session 
        # the || allows to execute the query to the DB
        # only if there's no current user, otherwise it keeps the same user
        @current_user ||= Student.find(session[:student_id]) if session[:student_id]
    end

    def logged_in?
        # The !! makes return the method a boolean
        !!current_user
    end

end
