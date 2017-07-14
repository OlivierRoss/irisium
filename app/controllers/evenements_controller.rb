class EvenementsController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :new, :create, :destroy]
    before_action :set_user
    before_action :set_evenement, only: [:show, :edit, :update, :destroy]

    # GET /evenements
    # GET /evenements.json
    def index
        @evenements = Evenement.where("date >= ?", Date.today).order(:date)
    end

    # GET /evenements/1
    # GET /evenements/1.json
    def show
        @evenements = Evenement.where("date >= ?", Date.today).order(:date).limit(3)
    end

    # GET /evenements/new
    def new
        @evenement = Evenement.new
    end

    # GET /evenements/1/edit
    def edit
    end

    # POST /evenements
    # POST /evenements.json
    def create

        # Sauvegarde de l'image dans la bd
        image_web = evenement_params[:image]
        image = Image.new({:data => image_web.tempfile.read, :mime_type => image_web.content_type, :name => image_web.original_filename})
        image.save

        @evenement = Evenement.new(evenement_params.except(:image))
        @evenement.image_id = image.id

        respond_to do |format|
            if @evenement.save
                format.html { redirect_to @evenement, notice: 'Evenement was successfully created.' }
                format.json { render :show, status: :created, location: @evenement }
            else
                format.html { render :new }
                format.json { render json: @evenement.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /evenements/1
    # PATCH/PUT /evenements/1.json
    def update
        respond_to do |format|
            if @evenement.update(evenement_params)
                format.html { redirect_to @evenement, notice: 'Evenement was successfully updated.' }
                format.json { render :show, status: :ok, location: @evenement }
            else
                format.html { render :edit }
                format.json { render json: @evenement.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /evenements/1
    # DELETE /evenements/1.json
    def destroy
        @evenement.destroy
        respond_to do |format|
            format.html { redirect_to evenements_url, notice: 'Evenement was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenement
        @evenement = Evenement.find(params[:id])
    end

    def set_user
        @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evenement_params
        params.require(:evenement).permit(:nom, :description, :image, :date, :lieu)
    end
end
