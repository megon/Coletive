class Notificacao < ActionMailer::Base  
  default :from => "Coletive.se indicacao@coletive.se"
  default :subject => "Novo interessado - Coletive-se"
  
  def enviar interessado    
    @interessado = interessado
    mail :to => "mrmarcondes@gmail.com"
    
  end
end
