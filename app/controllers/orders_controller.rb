class OrdersController < ApplicationController
  before_action :authenticate_any!, only: [:show]
  before_action :authenticate_admin!, except: [:show, :new]
  before_action do
    permissions({index:'Zamówienia', edit:'Zamówienia', create:'Zamówienia', update:'Zamówienia', destroy:'Zamówienia'})
  end


  # before_action :authenticate_user!

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.where.not(order_status: nil)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order_items = OrderItem.where(order_id: @order.id)
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Nowe zamówienie zostało utworzone.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update

    StatusMailer.welcome_email(@order, params).deliver_now

    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Dane zamówienia zostały edytowane.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Zamówienie zostało usunięte.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:shipping_id, :order_status_id, :country, :city, :postal_code, :street)
    end
end
