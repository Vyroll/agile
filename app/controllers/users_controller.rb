class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :edit_address, :edit_password]


  def show
    @orders = Order.where(user_id: @user.id)#.where.not(order_status: nil)
  end

  def edit_address
  end


  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Dane użytkownika zostały edytowane.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:country,:city,:postal_code,:street,:password)
    end

end
