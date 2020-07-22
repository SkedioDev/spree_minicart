module SpreeMinicart::OrdersControllerDecorator
  def self.prepended(base)
    base.respond_to :js, :only => [:populate, :update]
  end
end
::Spree::OrdersController.prepend SpreeMinicart::OrdersControllerDecorator