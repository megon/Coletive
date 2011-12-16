class Notificacao < ActionMailer::Base  
  default :from => "Coletive.se indicacao@coletive.se"
  default :subject => "Novo interessado - Coletive-se"
  
  def enviar interessado    
    @interessado = interessado
    mail :to => "mrmarcondes@gmail.com;gnumarcelo@gmail.com;dnlfukuda@gmail.com;patricia@megon.com.br"
    
  end
end
