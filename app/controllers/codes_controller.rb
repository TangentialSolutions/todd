class CodesController < ApplicationController
  helper_method :code_url, :qr_code_generate

  def index
    render status: :unauthorized if params[:password].to_sym != :getoffmyback

    @codes = Code.all
  end

  def code_url(code_uuid)
    people_url(code: code_uuid)
  end
end
