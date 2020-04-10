class DomainsController < ApplicationController
  def index
    @domains = Domain.all
  end

  def show
    @domain = Domain.find(domain_params)
  end

  def destroy
    @domain = Domain.find(domains_params)
    @domain.destroy
    redirect_to proposition_domains
  end

  private

  def domain_params
    params.require(:domain).permit(:authority_score, :age, :link)
  end


end
