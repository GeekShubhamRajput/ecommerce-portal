# app/services/products/create_product_service.rb
class Products::CreateProductService
    # current_user:
    def initialize(params:)
      @params = params
      #@current_user = current_user
    end
  
    def call
      product = Product.new(product_params)
      if product.save
        ServiceResponse.success(message: 'Product created successfully', payload: product)
      else
        ServiceResponse.error(message: 'Product creation failed', errors: product.errors.full_messages)
      end
    end
  
    private
  
    attr_reader :params #:current_user
  
    def product_params
      params.slice(:name, :price, :description, :category_id)
    end
  end
  