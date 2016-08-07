module InteractCart
  class OrderNotifierMailer < ApplicationMailer

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.order_notifier_mailer.notification.subject
    #
    def notification(order)
      @order=order
      mail to: InteractCart.order_receiver_email, subject: InteractCart.order_subject
    end

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.order_notifier_mailer.receipt.subject
    #
    def receipt(order)
      @order=order
      mail to: order.email
    end
  end
end
