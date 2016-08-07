module InteractCart
  # Preview all emails at http://localhost:3000/rails/mailers/order_notifier_mailer
  class OrderNotifierMailerPreview < ActionMailer::Preview

    # Preview this email at http://localhost:3000/rails/mailers/order_notifier_mailer/notification
    def notification
      OrderNotifierMailer.notification
    end

    # Preview this email at http://localhost:3000/rails/mailers/order_notifier_mailer/receipt
    def receipt
      OrderNotifierMailer.receipt
    end

  end
end
