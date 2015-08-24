class Test1sController < ApplicationController
  before_action :set_test1, only: [:show, :edit, :update, :destroy]

  # GET /test1s
  # GET /test1s.json
  def index
    @test1s = Test1.all
  end

  # GET /test1s/1
  # GET /test1s/1.json
  def show
  end

  # GET /test1s/new
  def new
    @test1 = Test1.new
  end

  # GET /test1s/1/edit
  def edit
  end

  # POST /test1s
  # POST /test1s.json
  def create
    @test1 = Test1.new(test1_params)

    respond_to do |format|
      if @test1.save
        format.html { redirect_to @test1, notice: 'Test1 was successfully created.' }
        format.json { render :show, status: :created, location: @test1 }
      else
        format.html { render :new }
        format.json { render json: @test1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test1s/1
  # PATCH/PUT /test1s/1.json
  def update
    respond_to do |format|
      if @test1.update(test1_params)
        format.html { redirect_to @test1, notice: 'Test1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @test1 }
      else
        format.html { render :edit }
        format.json { render json: @test1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test1s/1
  # DELETE /test1s/1.json
  def destroy
    @test1.destroy
    respond_to do |format|
      format.html { redirect_to test1s_url, notice: 'Test1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test1
      @test1 = Test1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test1_params
      params.require(:test1).permit(:attribute_binary, :attribute_boolean, :attribute_date, :attribute_datetime, :attribute_decimal, :attribute_float, :attribute_integer, :attribute_references_id, :attribute_string, :attribute_text, :attribute_time)
    end
end
