class ProductsController < ApplicationController

    def index

        @cart = cart
        
    end

    def add
        cart << params[:product][:product]
        session[:cart] = cart
        redirect_to "/"
    end

end
