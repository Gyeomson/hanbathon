class AdminController < ApplicationController
    def all
        @users=User.all
    end
    
    def one
        @user=User.find(params[:id])
    end
end
