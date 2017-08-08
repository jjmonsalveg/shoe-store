class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :edit, :update, :destroy]

  # GET /shoes
  # GET /shoes.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: ShoesDatatable.new(view_context) }
    end
  end

  # GET /shoes/1
  # GET /shoes/1.json
  def show
  end

  # GET /shoes/new
  def new
    @shoe = Shoe.new
  end

  # GET /shoes/1/edit
  def edit
  end

  # POST /shoes
  # POST /shoes.json
  def create
    @shoe = Shoe.new(shoe_params)

    respond_to do |format|
      if @shoe.save
        format.html { redirect_to @shoe, notice: t('notice.success.create',
                                                   model: model_name) }
        format.json { render :show, status: :created, location: @shoe }
      else
        format.html { render :new }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoes/1
  # PATCH/PUT /shoes/1.json
  def update
    respond_to do |format|
      if @shoe.update(shoe_params)
        format.html { redirect_to @shoe, notice: t('notice.success.update',
                                                   model: model_name) }
        format.json { render :show, status: :ok, location: @shoe }
      else
        format.html { render :edit }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /shoes/1
  # DELETE /shoes/1.json
  def destroy
    @shoe.destroy
    respond_to do |format|
      format.html { redirect_to shoes_url, notice: t('notice.success.delete',
                                                     model: model_name) }
      format.json { head :no_content }
    end
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
