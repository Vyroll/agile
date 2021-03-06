class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action do
    permissions({index:'Magazyn', show:'Magazyn', new:'Magazyn', edit:'Magazyn', create:'Magazyn', update:'Magazyn', destroy:'Magazyn'})
  end

  # GET /products
  # GET /products.json

  def index
    @products = Product.all
    if params[:filter]
      p = search_params
      @products = @products.where(category_id: p[:category_id]) unless p[:category_id].blank?
      @products = @products.where(platform_id: p[:platform_id]) unless p[:platform_id].blank?
      @products = @products.where("discount >= #{p[:discount_min]}") unless p[:discount_min].blank?
      @products = @products.where("discount <= #{p[:discount_max]}") unless p[:discount_max].blank?
    end

    @order_item = current_order.order_items.new
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create

    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Nowy produkt został utworzony.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Dane produktu zostały edytowane.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Produkt został usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :stock, :category_id, :price, {picture: []}, :platform_id, :fil_cat, :fil_plat, :discount)
    end

  def search_params
    params.
        # Optionally, whitelist your search parameters with permit
        require(:filter).permit(:platform_id,:category_id,:discount_min,:discount_max).
        # Delete any passed params that are nil or empty string
        delete_if {|key, value| value.blank? }
  end
end
