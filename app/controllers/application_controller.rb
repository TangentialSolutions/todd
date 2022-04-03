class ApplicationController < ActionController::Base
  def error(status = 500, errors = ["Something went wrong."])
    render status: status, json: {
      success: false,
      errors: errors
    }
  end
end
