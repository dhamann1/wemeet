class UsersController < ApplicationController 
    
    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        
        if user_params.has_key?("image") && @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else 
            flash[:upload_image_notice] = "Please upload image"
            render :new
        end 
    end 


    def show 
        @user = User.find(params[:id])
    end 

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :email, :image, :password, :password_confirmation)
    end 
end 