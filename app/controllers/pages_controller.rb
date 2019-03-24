class PagesController < ApplicationController

    skip_before_action :require_user, only

    def about
    end

end