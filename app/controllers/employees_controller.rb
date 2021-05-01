class EmployeesController < ApplicationController
    
    
    def login 
        if auth = Employee.authenticate(login_params)
           logging_in = Employee.find(params[:id])
           redirect_to login_path
        else 
            render 'login'
        end
    end

    private
    
    def login_params
        params.require(:login).permit(:email, :password_digest)
    end

end