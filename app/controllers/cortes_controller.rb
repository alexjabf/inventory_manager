class CortesController < ApplicationController
  before_action :set_corte, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /cortes
  def index
  end

  # GET /cortes/1
  def show
  end

  # GET /cortes/new
  def new
    @corte = Corte.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /cortes/1/edit
  def edit
  end

  # POST /cortes
  def create
    @corte = Corte.new(corte_params)
    if @corte.save
      redirect_to @corte, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /cortes/1
  def update
    if @corte.update(corte_params)
      redirect_to @corte, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /cortes/1
  def destroy
    @corte.destroy
    redirect_to cortes_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:cortes]
      Corte.destroy(params[:cortes])
      redirect_to cortes_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to cortes_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_corte
    @corte = Corte.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def corte_params
    params.require(:corte).permit(:IDcorte, :peso, :piezas, :IDlote, :idarticulo, :reempaque, :Etiqueta, :eliminado, :vendido, :agregado, :Estatus, :Inventariado, :Consecutivo, :Caducidad)#DO NO DELETE THIS COMMENT
  end
end
