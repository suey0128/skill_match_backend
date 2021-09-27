class AddEventsController < ApplicationController
  before_action :set_add_event, only: [:show, :update, :destroy]

  # GET /add_events
  def index
    @add_events = AddEvent.all

    render json: @add_events
  end

  # GET /add_events/1
  def show
    render json: @add_event
  end

  # POST /add_events
  def create
    @add_event = AddEvent.new(add_event_params)

    if @add_event.save
      render json: @add_event, status: :created, location: @add_event
    else
      render json: @add_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /add_events/1
  def update
    if @add_event.update(add_event_params)
      render json: @add_event
    else
      render json: @add_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /add_events/1
  def destroy
    @add_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_event
      @add_event = AddEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_event_params
      params.require(:add_event).permit(:event_id, :job_seeker_id)
    end
end
