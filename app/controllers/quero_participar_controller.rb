class QueroParticiparController < ApplicationController
  respond_to :js
  
  def participar
    @interessado = Interessado.new(params[:interessado])
    if @interessado.save
      flash[:notice] = "Seu email foi cadastrado com sucesso!"
    else
      flash[:error] = @interessado.errors.full_messages.first
    end
      respond_with @interessado
  end
end
