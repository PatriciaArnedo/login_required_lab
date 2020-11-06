class SessionsController < ApplicationController
    def new
    end
  
    def create
        #checks if params are nil or if user has entered params
        return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
        #sets session name key to user enteres name value                 
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
    end
  
    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end
  end
  