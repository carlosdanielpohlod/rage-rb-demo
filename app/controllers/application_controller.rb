class ApplicationController < RageController::API
  def health
    render json: { status: "ok" }
  end
end
