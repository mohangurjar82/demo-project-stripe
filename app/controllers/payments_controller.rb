class PaymentsController < ApplicationController
	rescue_from Stripe::CardError, with: :catch_exception
	
	def new
	end
	
	def create
		@payment = Payment.new
		@payment.call(payments_params, current_user)
    redirect_to new_payments_path
  end

  def checkouts
  end

  def create_checkout_session
   	session = Stripe::Checkout::Session.create({
	    line_items: [
	      {
	      	# price:"price_1JnOB56opoSILlWC5WosnrvsxvwL",
	      	price: '{{PRICE_ID}}',
	       	quantity: 2
	      }
	    ],

	    payment_method_types: [
	      'card',
	    ],
	    mode: 'payment',
	    success_url: "http://localhost:3000/checkouts?session=success",
	    cancel_url: "http://localhost:3000/checkouts?session=cancel",
  	})
  	redirect_to session.url
	end

  private

  def payments_params
    params.permit(:stripeEmail, :stripeToken, :order_id)
  end

  def catch_exception(exception)
    flash[:error] = exception.message
  end

end