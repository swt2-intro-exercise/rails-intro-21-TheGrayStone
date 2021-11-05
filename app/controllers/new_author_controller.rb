class NewAuthorController < ApplicationController
    def index
    end
    def create
        @author = Author.new({
            :first_name => params[:author][:first_name],
            :last_name => params[:author][:last_name],
            :homepage => params[:author][:homepage]
        })
        @author.save
    end
end
