class FamiliaController < ApplicationController
  before_action :set_familium, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :get_data, :except => [:show, :destroy]
  load_and_authorize_resource except: [:create]

  # GET /familia
  def index
    @familia = Familium.paginate(:page => params[:page], :per_page => 20).order('idFamilia DESC')
  end

  # GET /familia/1
  def show
  end

  # GET /familia/new
  def new
    @familium = Familium.new
    #BUILD NESTED ATTRIBUTES DO NO DELETE THIS COMMENT
  end

  # GET /familia/1/edit
  def edit
  end

  # POST /familia
  def create
    @familium = Familium.new(familium_params)
    if @familium.save
      redirect_to @familium, notice:  t("actions.created.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'new'#DO NO DELETE THIS COMMENT
    end
  end

  # PATCH/PUT /familia/1
  def update
    if @familium.update(familium_params)
      redirect_to @familium, notice:  t("actions.updated.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
    else
      render action: 'edit'
    end
  end

  # DELETE /familia/1
  def destroy
    @familium.destroy
    redirect_to familia_url, notice:  t("actions.destroyed.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)
  end

  def destroy_multiple
    if params[:familia]
      Familium.destroy(params[:familia])
      redirect_to familia_url, notice:  t("actions.multiple_destroyed.male",  model: t("activerecord.models.#{controller_name}").downcase)    
    else
      redirect_to familia_url, notice:  t("messages.error.you_must_select_at_least_one.male",  model: t("activerecord.models.#{controller_name.singularize}").downcase)    
    end
  end

  def get_data
    data
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_familium
    @familium = Familium.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def familium_params
    params.require(:familium).permit(:idFamilia, :FamClave, :FamDescripcion)#DO NO DELETE THIS COMMENT
  end
end
