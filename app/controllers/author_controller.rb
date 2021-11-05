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
        if !@author.errors.any?
            redirect_to root_path, notice: 'Success!'
        else
            render 'new'
        end
    end
    def show
        @author = Author.find(params[:id])
    end
    def edit
        @author = Author.find(params[:id])
    end
    def update
        @author = Author.find(params[:id])
        @author.update({
            :first_name => params[:author][:first_name],
            :last_name => params[:author][:last_name],
            :homepage => params[:author][:homepage]
        })
        render 'edit'
    end
    def destroy
        @author = Author.find(params[:id])
        @author.delete
        redirect_to authors_path, notice: 'Success!'
    end
end
