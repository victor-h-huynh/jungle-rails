class UserMailer < ApplicationMailer
    
    def order_success(user)
        mail(to: user.email, subject: 'hello')
    end

end
