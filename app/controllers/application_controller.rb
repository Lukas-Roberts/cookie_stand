class ApplicationController < Sinatra::Base

    configure do
        set :views, "app/views"
        enable :sessions
        set :session_secret, SESSION_SECRET
    end

    get '/' do
        if logged_in?
            redirect '/cookies'
        else
            erb :index
        end
    end


    helpers do

        def logged_in?
            !!session[:user_id]
        end

        def current_user
            User.find_by(id: session[:user_id])
        end

        def authenticate
            if !logged_in?
                redirect '/login'
            end
        end
    
        def authorize(cookie)
           if cookie.user != current_user
                redirect '/cookies'
           end
        end

    end

end
