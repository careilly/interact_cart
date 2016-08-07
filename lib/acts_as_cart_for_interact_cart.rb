module InteractCart
  module ActsAsOrderForInteractCart
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_order_for_interact_cart
        belongs_to :cart , :class_name => "InteractCart::Cart"
      end
    end

    module LocalInstanceMethods
        def orderid
          id
        end
        def x
          puts "x"
        end
    end
  end
end
