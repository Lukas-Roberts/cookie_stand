class CookiesController < ApplicationController


    get '/cookies' do
        authenticate
        erb :'cookies/index'
    end


end
