class PropositionsController < ApplicationController

  def index
    @propositions = Proposition.all
  end

  def show
    @proposition = Proposition.new
  end

  def new
    @proposition = Proposition.new
  end

  def create
    @proposition = Proposition.new(proposition_params)
    @proposition.save
  end

  def edit
    @proposition = Proposition.find(params[:id])
  end

  def update
    @proposition = Proposition.find(params[:id])
  end

  def destroy
    @proposition = Proposition.find(params[:id])
    @proposition.destroy
    redirect_to propositions_path
  end

  private

  def proposition_params
    params.require(:proposition).permit(:name, :status)
  end

end
