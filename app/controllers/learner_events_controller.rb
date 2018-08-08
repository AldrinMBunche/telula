class LearnerEventsController < ApplicationController
  before_action :set_learner_event, only: [:show, :edit, :update, :destroy]

  # GET /learner_events
  # GET /learner_events.json
  def index
    @learner_events = LearnerEvent.all
  end

  # GET /learner_events/1
  # GET /learner_events/1.json
  def show
  end

  # GET /learner_events/new
  def new
    @learner_event = LearnerEvent.new
  end

  # GET /learner_events/1/edit
  def edit
  end

  # POST /learner_events
  # POST /learner_events.json
  def create
    @learner_event = LearnerEvent.new(learner_event_params)

    respond_to do |format|
      if @learner_event.save
        format.html { redirect_to @learner_event, notice: 'Learner event was successfully created.' }
        format.json { render :show, status: :created, location: @learner_event }
      else
        format.html { render :new }
        format.json { render json: @learner_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learner_events/1
  # PATCH/PUT /learner_events/1.json
  def update
    respond_to do |format|
      if @learner_event.update(learner_event_params)
        format.html { redirect_to @learner_event, notice: 'Learner event was successfully updated.' }
        format.json { render :show, status: :ok, location: @learner_event }
      else
        format.html { render :edit }
        format.json { render json: @learner_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learner_events/1
  # DELETE /learner_events/1.json
  def destroy
    @learner_event.destroy
    respond_to do |format|
      format.html { redirect_to learner_events_url, notice: 'Learner event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learner_event
      @learner_event = LearnerEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learner_event_params
      params.require(:learner_event).permit(:TRAINING_ID, :LEARNER_ID, :AGREEMENT_NO, :AGREEMENT_ON, :REGISTRATION_NO, :CERTIFICATE_NO, :CERTIFICATE_ON, :BATCH_NO, :MACHINE_RESTRICTION, :CERTIFICATE_ISSUED, :CERTIFICATE_ISSUED_BY, :OLD_BATCH_NO, :CANCELATION_ON, :TRADE_TEST_ON, :CERTIFICATE_NOTES, :MED, :HQ, :EYE, :PRDP, :LOG, :PRI_OR, :ID_DOC)
    end
end
