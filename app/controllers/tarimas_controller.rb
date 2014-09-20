class TarimasController < ApplicationController
  before_action :set_tarima, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
#  before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /tarimas
  def index
@tarimas = Tarima.paginate(:page => params[:page], :per_page => 20).order('idTarima DESC') 
 end

  # GET /tarimas/1
  def show
@tarima = Tarima.find(params[:id])
  end

  # GET /tarimas/new
  def new
    @tarima = Tarima.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /tarimas/1/edit
  def edit
  end

  # POST /tarimas
  def create
    @tarima = Tarima.new(tarima_params)
    if @tarima.save
      redirect_to @tarima, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /tarimas/1
  def update
    if @tarima.update(tarima_params)
      redirect_to @tarima, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /tarimas/1
  def destroy
    @tarima.destroy
    redirect_to tarimas_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:tarimas]
      Tarima.destroy(params[:tarimas])
      redirect_to tarimas_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to tarimas_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tarima
    @tarima = Tarima.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def tarima_params
    params.require(:tarima).permit(:idTarima, :CodigoTarima, :Fecha, :Activa)#DO NO DELETE THIS COMMENT
  end
end
