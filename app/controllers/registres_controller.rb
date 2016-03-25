class RegistresController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_registre, only: [:show, :edit, :update, :destroy]

  # GET /registres
  # GET /registres.json
  def index
    @registres = Registre.all
  end

  # GET /registres/1
  # GET /registres/1.json
  def show
  end

  # GET /registres/new
  def new
    @registre = Registre.new
  end

  # GET /registres/1/edit
  def edit
  end

  # POST /registres
  # POST /registres.json
  def create
    @registre = Registre.new(registre_params)
    @registre.user_id = current_user.id

    respond_to do |format|
      if @registre.save
        format.html { redirect_to @registre, notice: 'La note est crée avec succes.' }
        format.json { render :show, status: :created, location: @registre }
      else
        format.html { render :new }
        format.json { render json: @registre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registres/1
  # PATCH/PUT /registres/1.json
  def update
    respond_to do |format|
      if @registre.update(registre_params)
        format.html { redirect_to @registre, notice: 'La note est mise à jour avec succès.' }
        format.json { render :show, status: :ok, location: @registre }
      else
        format.html { render :edit }
        format.json { render json: @registre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registres/1
  # DELETE /registres/1.json
  def destroy
    @registre.destroy
    respond_to do |format|
      format.html { redirect_to registres_url, notice: 'La note est supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registre
      @registre = Registre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registre_params
      params.require(:registre).permit(:motif, :date, :origine, :destination, :distance, :user_id)
    end
end
