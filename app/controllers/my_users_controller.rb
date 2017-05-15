class MyUsersController < ApplicationController
  before_action :set_my_user, only: [:show, :edit, :update, :destroy]

  # GET /my_users
  # GET /my_users.json
  def index
    @my_users = MyUser.all
  end

  # GET /my_users/1
  # GET /my_users/1.json
  def show
  end

  # GET /my_users/new
  def new
    @my_user = MyUser.new
  end

  # GET /my_users/1/edit
  def edit
  end

  # POST /my_users
  # POST /my_users.json
  def create
    @my_user = MyUser.new(my_user_params)

    respond_to do |format|
      if @my_user.save
        format.html { redirect_to @my_user, notice: 'My user was successfully created.' }
        format.json { render :show, status: :created, location: @my_user }
      else
        format.html { render :new }
        format.json { render json: @my_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_users/1
  # PATCH/PUT /my_users/1.json
  def update
    respond_to do |format|
      if @my_user.update(my_user_params)
        format.html { redirect_to @my_user, notice: 'My user was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_user }
      else
        format.html { render :edit }
        format.json { render json: @my_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_users/1
  # DELETE /my_users/1.json
  def destroy
    @my_user.destroy
    respond_to do |format|
      format.html { redirect_to my_users_url, notice: 'My user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_user
      @my_user = MyUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_user_params
      params.require(:my_user).permit(:user_name, :user_password)
    end
end
