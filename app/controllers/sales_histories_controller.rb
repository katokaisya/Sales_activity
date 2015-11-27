class SalesHistoriesController < ApplicationController
  before_action :set_sales_history, only: [:show, :edit, :update, :destroy]

  # GET /sales_histories
  # GET /sales_histories.json
  def index
    @sales_histories = SalesHistory.all
  end

  # GET /sales_histories/1
  # GET /sales_histories/1.json
  def show
  end

  # GET /sales_histories/new
  def new
    @sales_history = SalesHistory.new
  end

  # GET /sales_histories/1/edit
  def edit
  end

  # POST /sales_histories
  # POST /sales_histories.json
  def create
    @sales_history = SalesHistory.new(sales_history_params)

    respond_to do |format|
      if @sales_history.save
        format.html { redirect_to @sales_history, notice: 'Sales history was successfully created.' }
        format.json { render :show, status: :created, location: @sales_history }
      else
        format.html { render :new }
        format.json { render json: @sales_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_histories/1
  # PATCH/PUT /sales_histories/1.json
  def update
    respond_to do |format|
      if @sales_history.update(sales_history_params)
        format.html { redirect_to @sales_history, notice: 'Sales history was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_history }
      else
        format.html { render :edit }
        format.json { render json: @sales_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_histories/1
  # DELETE /sales_histories/1.json
  def destroy
    @sales_history.destroy
    respond_to do |format|
      format.html { redirect_to sales_histories_url, notice: 'Sales history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_history
      @sales_history = SalesHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_history_params
      params.require(:sales_history).permit(:activity_time, :customer_id, :sales_category, :sales_achievement, :detail)
    end
end
