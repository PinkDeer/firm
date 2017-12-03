class SkillsController < ApplicationController

  before_action :find_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.where(:status => true)
    authorize @skills
  end

  def show
  end

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    authorize @skill

    if @skill.save
			redirect_to @skill
		else
			render 'new'
		end
  end

  def edit
  end

  def update
    if @skill.update_attributes(skill_params)
      redirect_to @skill
    else
      reder 'edit'
    end
  end

  def destroy
    @skill.destroy
    redirect_to firms_path
  end

  private

    def find_skill
      @skill = Skill.find(params[:id])
      authorize @skill
    end

    def skill_params
      params.require(:skill).permit(:name, :parent_id)
    end
end
