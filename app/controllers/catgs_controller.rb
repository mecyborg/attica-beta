class CatgsController < ApplicationController
  before_action :set_catg, only: [:show, :edit, :update, :destroy]

  # GET /catgs
  # GET /catgs.json
  def index
    @catgs = Catg.all
  end

  # GET /catgs/1
  # GET /catgs/1.json
  def show
    @catg_products = Product.where(category: params[:id])
  end

  # GET /catgs/new
  def new
    @catg = Catg.new
  end

  # GET /catgs/1/edit
  def edit
  end

  # POST /catgs
  # POST /catgs.json
  def create
    @catg = Catg.new(catg_params)

    respond_to do |format|
      if @catg.save
        format.html { redirect_to @catg, notice: 'Catg was successfully created.' }
        format.json { render :show, status: :created, location: @catg }
      else
        format.html { render :new }
        format.json { render json: @catg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catgs/1
  # PATCH/PUT /catgs/1.json
  def update
    respond_to do |format|
      if @catg.update(catg_params)
        format.html { redirect_to @catg, notice: 'Catg was successfully updated.' }
        format.json { render :show, status: :ok, location: @catg }
      else
        format.html { render :edit }
        format.json { render json: @catg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catgs/1
  # DELETE /catgs/1.json
  def destroy
    @catg.destroy
    respond_to do |format|
      format.html { redirect_to catgs_url, notice: 'Catg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catg
      @catg = Catg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catg_params
      params.require(:catg).permit(:name, :nop)
    end
end
