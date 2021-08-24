class ProductsController < ApplicationController

    def index
        @products = Product.all.order("created_at DESC")

    end

    def new
        @product = Product.new
    end

    def create 
        @product = Product.new(product_params)
        if @product.save
            redirect_to products_path, notice: "you created a product"
        else 
            render :new, alert: "your product wasn't created"
        end
    end

    private 
    def product_params
        params.require(:product).permit(:title, :description, :price, :imageSource)
    end


end
