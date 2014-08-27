class AlmacenesController < ApplicationController
  before_action :set_almacene, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /almacenes
  def index
  end

  # GET /almacenes/1
  def show
  end

  # GET /almacenes/new
  def new
    @almacene = Almacene.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /almacenes/1/edit
  def edit
  end

  # POST /almacenes
  def create
    @almacene = Almacene.new(almacene_params)
    if @almacene.save
      redirect_to @almacene, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /almacenes/1
  def update
    if @almacene.update(almacene_params)
      redirect_to @almacene, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /almacenes/1
  def destroy
    @almacene.destroy
    redirect_to almacenes_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:almacenes]
      Almacene.destroy(params[:almacenes])
      redirect_to almacenes_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to almacenes_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_almacene
    @almacene = Almacene.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def almacene_params
    params.require(:almacene).permit(:IdAlmacen, :Nombre, :TipoAlmacen)#DO NO DELETE THIS COMMENT
  end
end
