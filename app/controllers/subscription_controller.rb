class SubscriptionController < ApplicationController
  def index
    @subscriptions =Subscription.all
  end

end
