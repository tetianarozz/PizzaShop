# class Admin::AdminController < ApplicationController
class AdminController < ApplicationController
  #layout :admin

  before_action :set_admin, only: %i[ show edit update destroy ]

  def index
    @admin = Admin.all
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def edit
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to admin_url, notice: "Admin #{@admin.login} was successfully created." }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to admin_url, notice: "Admin #{@admin.login} was successfully updated." }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    begin
      @admin.destroy
      flash[:notice] = "Admin #{@admin.login} deleted"
    rescue StandardError => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to admin_url, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def admin_params
    params.require(:admin).permit(:email, :login, :encrypted_password, :role)
  end
end
