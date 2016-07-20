module InteractCart
  module ActsAsOrderForInteractCart
    extend ActiveSupport::Concern
    included do
    end


    module ClassMethods
      def acts_as_order_for_interact_cart
        belongs_to :cart , :class_name => "InteractCart::Cart"
        def orderid
          id
        end
      end
    end
  end    
  ActiveRecord::Base.class_exec do
    include InteractCart::ActsAsOrderForInteractCart
  end
end
