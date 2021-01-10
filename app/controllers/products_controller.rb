class ProductsController < ApplicationController
    layout 'user'
    
    def index
        @products=Product.all
    end 
end
