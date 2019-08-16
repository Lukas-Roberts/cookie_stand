class CookiesController < ApplicationController


    get '/cookies' do
        authenticate
        @cookies = Cookie.all
        erb :'cookies/index'
    end

    get '/cookies/new' do

    end

    post '/cookies' do

    end

    get '/cookies/:id' do

    end

    get '/cookies/:id/edit' do

    end

    patch '/cookies/:id' do

    end

    delete '/cookies/:id' do

    end


end
