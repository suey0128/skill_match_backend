class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :update, :destroy]

  # GET /skills
  def index
    @skills = Skill.all

    render json: @skills
  end

  # GET /skills/1
  def show
    render json: @skill
  end

  # POST /skills
  def create
    @skill = Skill.create(skill_params)
    # if params[:user_type] == "recruiter"
    #   r = Recruiter.find_by(id: params[:user_id])
    #   r.add_skill(skill_params[:name], skill_params[:level])
    # else
    #   js = JobSeeker.find_by(id: params[:user_id])
    #   js.add_skill(params[:name], params[:level])
    # end
    
    if @skill.save
      render json: @skill, status: :created, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skills/1
  def update
    if @skill.update(skill_params)
      render json: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skills/1
  def destroy
    @skill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.all.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:profile_id, :name, :level, :logo)
    end
end
