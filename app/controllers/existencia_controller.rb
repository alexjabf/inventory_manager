class ExistenciaController < ApplicationController
  before_action :set_existencium, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  #before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /existencia
  def index
    @existencia = Existencium.where(:IdAlmacen => 10 ).paginate(:page => params[:page], :per_page => 20).order('Cantidad DESC')
    @top_ten = Existencium.where(:IdAlmacen => 10 ).order("Cantidad DESC")
    #@sebo = Existencium.find_by_IdArticulo("112")
  end

  # GET /existencia/1
  def show
    @existencium = Existencium.find(params[:id])
  end

  # GET /existencia/new
  def new
    @existencium = Existencium.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /existencia/1/edit
  def edit
  end

  # POST /existencia
  def create
    @existencium = Existencium.new(existencium_params)
    if @existencium.save
      redirect_to @existencium, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /existencia/1
  def update
    if @existencium.update(existencium_params)
      redirect_to @existencium, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /existencia/1
  def destroy
    @existencium.destroy
    redirect_to existencia_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:existencia]
      Existencium.destroy(params[:existencia])
      redirect_to existencia_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to existencia_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_existencium
    @existencium = Existencium.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def existencium_params
    params.require(:existencium).permit(:IdExistencia, :IdArticulo, :IdAlmacen, :Cantidad, :Fecha, :FechaCad)#DO NO DELETE THIS COMMENT
  end
end
