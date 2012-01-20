class Interessado < ActiveRecord::Base
  after_save :enviar_email_interessado
  validates :email, :presence => true, :uniqueness => true
  
  attr_accessor :outro

  def enviar_email_interessado
    Notificacao.enviar(self).deliver
  end
end
