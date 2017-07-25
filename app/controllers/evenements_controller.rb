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
        @evenement = Evenement.new(evenement_params.except(:image))
        @evenement.image_id = creer_image(evenement_params[:image])
        
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

            nouveau_parametres = evenement_params

            # Si upload d'une nouvelle image
            if (evenement_params[:image])
                
                # Supprimer l'ancienne
                Image.find(@evenement.image_id).delete

                # Creer nouvelle et mettre dans les parametres de l'update
                nouveau_parametres = evenement_params.except(:image).merge(:image_id => creer_image(evenement_params[:image]))

            end

            if @evenement.update(nouveau_parametres)
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
        params.require(:evenement).permit(:nom, :description, :image, :date, :lieu, :categorie)
    end

    def creer_image (params_image)
        image = Image.new({:data => params_image.tempfile.read, :mime_type => params_image.content_type, :name => params_image.original_filename})
        image.save
        image.id
    end

end
