class DomainsController < ApplicationController
  def index
    @domains = Domain.all
  end

  def show
    @domain = Domain.find(domain_params)
  end

  def destroy
  end
end

private

def domain_params

end

