class QueroParticiparController < ApplicationController
  respond_to :js
  
  def participar
    @interessado = Interessado.new(params[:interessado])
    @interessado.save
    respond_with @interessado
  end
end
