class LotecanalsController < ApplicationController
  before_action :set_lotecanal, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /lotecanals
  def index
     @lotecanals = Lotecanal.order("IDlote DESC").paginate(:per_page => params[:per_page], :page => params[:page])
  end

  # GET /lotecanals/1
  def show
  end

  # GET /lotecanals/new
  def new
    @lotecanal = Lotecanal.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /lotecanals/1/edit
  def edit
  end

  # POST /lotecanals
  def create
    @lotecanal = Lotecanal.new(lotecanal_params)
    if @lotecanal.save
      redirect_to @lotecanal, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /lotecanals/1
  def update
    if @lotecanal.update(lotecanal_params)
      redirect_to @lotecanal, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /lotecanals/1
  def destroy
    @lotecanal.destroy
    redirect_to lotecanals_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:lotecanals]
      Lotecanal.destroy(params[:lotecanals])
      redirect_to lotecanals_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to lotecanals_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_lotecanal
    @lotecanal = Lotecanal.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def lotecanal_params
    params.require(:lotecanal).permit(:IDlote, :IDfolio, :pesoinicial, :pesofinal, :costoinicial, :costofinal, :costosIndirectos, :manoObra, :numfactura, :sebo, :hueso, :aserrin, :consecutivo, :fecha, :estado, :cierrefecha, :descripcion)#DO NO DELETE THIS COMMENT
  end
end
