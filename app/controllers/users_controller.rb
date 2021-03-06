class UsersController < ApplicationController
    def welcome        
    end
    def index
        @users = User.all
    end
    
    def new #display form for create a new record
        @user = User.new
    end

    def create
        @user = User.new(allowed_params)

        if @user.save
            redirect_to users_path
        else
            redender "new"
        end
    end

    def show #individual record. 
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    private
    def allowed_params
        params.require(:user).permit(:name)
    end
end

# def index #list of drinks
#     @drinks = Drink.all
# end