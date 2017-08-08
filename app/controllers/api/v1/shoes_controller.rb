class Api::V1::ShoesController < Api::V1::ApiApplicationController

  def index
    render json: 'hola'
  end
end