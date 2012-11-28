class StripeController < ApplicationController
  def new

  end
  def create
    # Parameters: {"utf8"=>"tok_0oqws8Hk4WuJzq", "authenticity_token"=>"tok_0oqws8Hk4WuJzq", "token"=>"tok_0oqws8Hk4WuJzq", "amount"=>"500"}
    amount = params[:amount].to_i * 100
    token = params[:token]

    begin
      @stripe = Stripe::Charge.create(
        :amount       => amount,
        :card         => token,
        :description  => 'Rails Stripe Customer',
        :currency     => 'usd'
      )
    rescue Exception => e
      @error = e.message
    end


  end
end