class Interessado < ActiveRecord::Base
  
  validates :email, :presence => true, :uniqueness => true
  
  after_save :enviar_email_interessado

  def enviar_email_interessado
    Notificacao.enviar(self).deliver
  end
end
