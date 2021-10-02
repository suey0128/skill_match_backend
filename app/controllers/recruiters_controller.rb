class RecruitersController < ApplicationController
  before_action :set_recruiter, only: [:show, :update, :destroy]

  # GET /recruiters
  def index
    @recruiters = Recruiter.all

    render json: @recruiters
  end

  # GET /recruiters/1
  def show
    render json: @recruiter
  end

  # POST /recruiters
  def create
    @recruiter = Recruiter.new(recruiter_params)

    if @recruiter.save
      profile = Profile.create!(user_id: @recruiter.id, user_type: "Recruiter")
      render json: @recruiter, status: :created, location: @recruiter
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recruiters/1
  def update
    if @recruiter.update(recruiter_params)
      render json: @recruiter
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recruiters/1
  def destroy
    @recruiter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruiter
      @recruiter = Recruiter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recruiter_params
      params.require(:recruiter).permit(:name, :company_name, :location, :username, :password, :email, :logo)
    end
end
