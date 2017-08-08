class Api::V1::ShoesController < Api::V1::ApiApplicationController
  # respond_to :json
  before_action :set_shoe, only: [:show, :update, :destroy]


  def index
    list = Shoe.all.page(params[:page]).per(params[:per_page])
    render json: {json: list , meta: pagination(list, params[:per_page]),
                  root: "shoes"}
  end

  def show
    render json: @shoe
  end

  def create
    shoe = Shoe.new(shoe_params)

    if shoe.save
      render json: shoe, status: 201, location: [:api, shoe]
    else
      render json: shoe.errors, status: :unprocessable_entity
    end
  end


  def update
    shoe = Shoe.find(params[:id])

    if shoe.update(shoe_params)
      render json: shoe, status: 200, location: [:api, shoe]
    else
      render json: { errors: shoe.errors }, status: 422
    end
  end


  def destroy
    @shoe.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def shoe_params
    params.require(:shoe).permit(:model, :brand_id, :isbn, :release_year, :sku,
                                 :image, :image_cache)
  end

  def model_name
    t('activerecord.models.shoe').singularize
  end
end