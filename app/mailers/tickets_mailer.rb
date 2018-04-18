class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket

    mail(to: user.email, subject: 'Ticket buy')
  end

  def delete_ticket(user, ticket)
    @user = user
    @ticket = ticket

    mail(to: user.email, subject: 'Ticket delete')
  end
end
