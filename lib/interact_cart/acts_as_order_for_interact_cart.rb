module InteractCart
  module ActsAsOrderForInteractCart
    extend ActiveSupport::Concern
    included do
    end


    module ClassMethods
      def acts_as_order_for_interact_cart
        belongs_to :cart , :class_name => "InteractCart::Cart"
        include InteractCart::ActsAsOrderForInteractCart::LocalInstanceMethods
      end
    end
    module LocalInstanceMethods
        def orderid
          id
        end
        def order_completed
         begin
           InteractCart::OrderNotifierMailer.notification(self).deliver_later
         rescue Exception => e
           logger.debug  "Notification Email failed: #{e.inspect}"
         end
         begin
           InteractCart::OrderNotifierMailer.receipt(self).deliver_later
         rescue Exception => e
           logger.debug  "Receipt Email failed: #{e.inspect}"
         end
        end
    end
  end    
  ActiveRecord::Base.class_exec do
    include InteractCart::ActsAsOrderForInteractCart
  end
end
