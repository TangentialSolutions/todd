class DemoController < ApplicationController

  def index; end

  def mailchimp_callback
    head :ok
  end
end
