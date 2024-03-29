class SessionsController < ApplicationController

    get '/login' do
        redirect '/cookies' if logged_in?
        @failed = false
        erb :'sessions/login'
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect '/cookies'
        else
            @failed = true
            erb :'sessions/login'
        end
    end

    get '/signup' do
        redirect '/cookies' if logged_in?
        erb :'sessions/signup'
    end

    post '/users' do
        @user = User.create(name: params[:name], username: params[:username], password: params[:password])
      
        if @user.errors.any?
            erb :'sessions/signup'
        else
            session[:user_id] = @user.id
            redirect '/cookies'
        end 
    end

    get '/logout' do
        session.clear
        erb :'index'
    end

end