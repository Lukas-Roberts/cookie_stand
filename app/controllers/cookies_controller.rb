class CookiesController < ApplicationController


    get '/cookies' do
        erb :'cookies/index'
    end


end
