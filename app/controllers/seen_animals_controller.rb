class SeenAnimalsController < ApplicationController
  before_action :set_seen_animal, only: [:show, :edit, :update, :destroy]

  # GET /seen_animals
  # GET /seen_animals.json
  def index
    @seen_animals = SeenAnimal.all
  end

  # GET /seen_animals/1
  # GET /seen_animals/1.json
  def show
  end

  # GET /seen_animals/new
  def new
    @seen_animal = SeenAnimal.new
  end

  # GET /seen_animals/1/edit
  def edit
  end

  # POST /seen_animals
  # POST /seen_animals.json
  def create
    @seen_animal = SeenAnimal.new(seen_animal_params)

    respond_to do |format|
      if @seen_animal.save
        format.html { redirect_to @seen_animal, notice: 'Seen animal was successfully created.' }
        format.json { render :show, status: :created, location: @seen_animal }
      else
        format.html { render :new }
        format.json { render json: @seen_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seen_animals/1
  # PATCH/PUT /seen_animals/1.json
  def update
    respond_to do |format|
      if @seen_animal.update(seen_animal_params)
        format.html { redirect_to @seen_animal, notice: 'Seen animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @seen_animal }
      else
        format.html { render :edit }
        format.json { render json: @seen_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seen_animals/1
  # DELETE /seen_animals/1.json
  def destroy
    @seen_animal.destroy
    respond_to do |format|
      format.html { redirect_to seen_animals_url, notice: 'Seen animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seen_animal
      @seen_animal = SeenAnimal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seen_animal_params
      params.require(:seen_animal).permit(:id, :species, :count_of_times_seen, :location_of_last_seen)
    end
end
