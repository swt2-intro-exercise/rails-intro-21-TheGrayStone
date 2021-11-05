class AuthorController < ApplicationController
    def index
        @authors = Author.all
    end
    def new
    end
    def create
        @author = Author.new({
            :first_name => params[:author][:first_name],
            :last_name => params[:author][:last_name],
            :homepage => params[:author][:homepage]
        })
        @author.save
        redirect_to root_path, notice: 'Success!'
    end
    def show
        @author = Author.find(params[:id])
    end
end
