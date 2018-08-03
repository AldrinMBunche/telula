class LearnersController < ApplicationController
  before_action :set_learner, only: [:show, :edit, :update, :destroy]

  # GET /learners
  # GET /learners.json
  def index
    @learners = Learner.all
  end

  # GET /learners/1
  # GET /learners/1.json
  def show
  end

  # GET /learners/new
  def new
    @learner = Learner.new
  end

  # GET /learners/1/edit
  def edit
  end

  # POST /learners
  # POST /learners.json
  def create
    @learner = Learner.new(learner_params)

    respond_to do |format|
      if @learner.save
        format.html { redirect_to @learner, notice: 'Learner was successfully created.' }
        format.json { render :show, status: :created, location: @learner }
      else
        format.html { render :new }
        format.json { render json: @learner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learners/1
  # PATCH/PUT /learners/1.json
  def update
    respond_to do |format|
      if @learner.update(learner_params)
        format.html { redirect_to @learner, notice: 'Learner was successfully updated.' }
        format.json { render :show, status: :ok, location: @learner }
      else
        format.html { render :edit }
        format.json { render json: @learner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learners/1
  # DELETE /learners/1.json
  def destroy
    @learner.destroy
    respond_to do |format|
      format.html { redirect_to learners_url, notice: 'Learner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learner
      @learner = Learner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learner_params
      params.require(:learner).permit(:learner_id, :client_id, :id_type, :id_number, :passport_number, :date_of_birth, :first_name, :last_name, :middle_names, :title, :equity, :gender, :nationality, :citizen_status, :disability_status, :home_language, :organising_framework_occupations, :socioeconomic_status, :no_education, :highest_school_grade, :abet, :tertiary_qualification, :license_code, :cellphone_number, :email_address, :next_of_kin_name, :next_of_kin_contact_no, :guardian_name, :guardian_contact_no, :storage_cabinet_no, :disposal_date, :r_address_line_1, :r_address_line_2, :r_suburb, :r_city, :r_province, :r_postal_code, :r_country, :p_address_line_1, :address_line_2, :p_suburb, :p_city, :p_province, :p_postal_code, :p_country, :municipality, :urban_rural, :photo, :photo_name, :notes)
    end
end
