class DogRegistrationsController < ApplicationController
  before_action :set_dog_registration, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create]

  # GET /dog_registrations
  # GET /dog_registrations.json
  def index
    @dog_registrations = DogRegistration.all
  end

  # GET /dog_registrations/1
  # GET /dog_registrations/1.json
  def show
  end

  # GET /dog_registrations/new
  def new
    @dog_registration = DogRegistration.new
  end

  # GET /dog_registrations/1/edit
  def edit
  end

  # POST /dog_registrations
  # POST /dog_registrations.json
  def create
    @dog_registration = DogRegistration.new(dog_registration_params)

    respond_to do |format|
      if @dog_registration.save
        format.html { redirect_to root_path, notice: 'Dog registration was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /dog_registrations/1
  # PATCH/PUT /dog_registrations/1.json
  def update
    respond_to do |format|
      if @dog_registration.update(dog_registration_params)
        format.html { redirect_to @dog_registration, notice: 'Dog registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog_registration }
      else
        format.html { render :edit }
        format.json { render json: @dog_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_registrations/1
  # DELETE /dog_registrations/1.json
  def destroy
    @dog_registration.destroy
    respond_to do |format|
      format.html { redirect_to dog_registrations_url, notice: 'Dog registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_registration
      @dog_registration = DogRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_registration_params
      params.require(:dog_registration).permit(:first_name, :last_name, :email, :address_1, :address_2, :city, :state, :zip, :country, :phone, :second_owner_name, :second_owner_phone, :dog_name, :dog_sex, :dog_breed, :dog_weight, :birthday, :vet, :dog_desription, :dog_daycare_history, :second_dog_name, :second_dog_sex, :second_dog_breed, :second_dog_weight, :second_dog_birthday, :second_dog_description, :comments, :origin, :referral)
    end
end
