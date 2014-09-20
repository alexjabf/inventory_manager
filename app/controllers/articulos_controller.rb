class ArticulosController < ApplicationController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
 # before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /articulos
  def index
@articulos = Articulo.paginate(:page => params[:page], :per_page => 20).order('idArticulo DESC')  
end

  # GET /articulos/1
  def show
@articulo = Articulo.find(params[:id])
  end

  # GET /articulos/new
  def new
    @articulo = Articulo.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      redirect_to @articulo, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /articulos/1
  def update
    if @articulo.update(articulo_params)
      redirect_to @articulo, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /articulos/1
  def destroy
    @articulo.destroy
    redirect_to articulos_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:articulos]
      Articulo.destroy(params[:articulos])
      redirect_to articulos_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to articulos_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_articulo
    @articulo = Articulo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def articulo_params
    params.require(:articulo).permit(:idArticulo, :idFamilia, :SubFamilia, :ArtClave, :ArtClaveAlterna, :Descripcion, :descripcion_corta, :Cont, :idUnidad, :PiezasxCaja, :Costoxpza, :Costoxcaja, :Costoprod, :PzasxEmp, :Tipo_Articulo, :Origen, :Fecha, :FechaModificacion, :Activo, :Categoria, :idAlmacen, :costoUnidadMedida, :ultimoCosto, :costoPromedio, :tipoEtiqueta, :precioVenta)#DO NO DELETE THIS COMMENT
  end
end
