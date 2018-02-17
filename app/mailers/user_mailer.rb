class UserMailer < ApplicationMailer


  def contact_form(email, name, message)

    mail(  to: 'testruby2017@gmail.com ',
           subject: "A new contact form message from #{name}",
           body: "A new contact form message from #{message}")


  end


  def welcome(user)
  @user = user
  mail(to: @user.email,
       subject: "Sign Up Confirmation",
       body: "Welcome To Our Store And Thank You For Signing Up")
end

def payment_confirmed(user, product)
  @user = user
  @product = product
  mail(:to => @user.email,
       :subject => "Your order of the #{product.name} has been placed.")

end
end