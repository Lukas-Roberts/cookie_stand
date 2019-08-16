class CookiesController < ApplicationController

    get '/cookies' do
        authenticate
        @cookies = Cookie.all
        erb :'cookies/index'
    end

    get '/cookies/new' do
        erb :'cookies/new'
    end

    post '/cookies' do
        cookie = Cookie.new(name: params[:cookie_name], cookie_type: params[:cookie_type], user_id: current_user.id)
        cookie.save
        redirect 'cookies/index'
    end

    get '/cookies/:id' do
        @cookie = Cookie.find_by_id(params[:id])
        erb :'cookies/show'
    end

    get '/cookies/:id/edit' do
        @cookie = Cookie.find_by_id(params[:id])
        erb :'cookies/edit'
    end

    patch '/cookies/:id' do
        @cookie = Cookie.find_by_id(params[:id])
        #@cookie.name = params[:]
       # @cookie.type = params[:]
        @cookie.save
        redirect '/cookies'
    end

    delete '/cookies/:id/delete' do
        @cookie = Cookie.find_by_id(params[:id])
        @cookie.delete
    end


end
