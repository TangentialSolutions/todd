class DemoController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index; end

  def mailchimp_callback
    head :ok
  end

  def encode

  end

  def decode
    render json: { value: "#{params['firstname']} #{params['lastname']} is #{params['age']} years old." }
  end
end
