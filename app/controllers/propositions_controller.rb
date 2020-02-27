class PropositionsController < ApplicationController

  def index
    @propositions = Proposition.all
  end

end
