class FirmsController < ApplicationController

  before_action :find_firm, only: [:show, :edit, :update, :destroy]

  def index
    @firms = Firm.all
  end

  def show
  end

  def new
    @firm = Firm.new
  end

  def create
    @firm = Firm.new(firm_params)
    if @firm.save
			redirect_to @firm
		else
			render 'new'
		end
  end

  def edit
  end

  def update
    if @firm.update_attributes(firm_params)
      redirect_to @firm
    else
      reder 'edit'
    end
  end

  def destroy
    @firm.destroy
    redirect_to firms_path
  end

  private

    def find_firm
      @firm = Firm.find(params[:id])
    end

    def firm_params
      params.require(:firm).permit(:name, :logo, :datestamp, :people, skill_ids:[])
    end
end
