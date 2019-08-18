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
        cookie = Cookie.create(name: params[:cookie_name], cookie_type: params[:cookie_type], user_id: current_user.id)
        redirect '/cookies'
    end

    get '/cookies/my_cookies' do
        @cookies = current_user.cookies
        erb :'cookies/my_cookies'
    end

    get '/cookies/:id' do
        @cookie = Cookie.find_by_id(params[:id])
        authorize(@cookie)
        erb :'cookies/show'
    end

    get '/cookies/:id/edit' do
        @cookie = Cookie.find_by_id(params[:id])
        authorize(@cookie)
        erb :'cookies/edit'
    end

    patch '/cookies/:id' do
        cookie = Cookie.find_by_id(params[:id])
        authorize(cookie)
        cookie.name = params[:cookie_name]
        cookie.cookie_type = params[:cookie_type]
        cookie.save
        redirect '/cookies'
    end

    delete '/cookies/:id/delete' do
        cookie = Cookie.find_by_id(params[:id])
        authorize(cookie)
        cookie.delete
        redirect '/cookies'
    end


end
