class OfertaController < ApplicationController
  before_action :set_ofertum, only: [:show, :edit, :update, :destroy]

  # GET /oferta
  # GET /oferta.json
  def index

    @users=Usuario.find(current_user.id)

    #@oferta = Ofertum.all
    @oferta = Ofertum.where(usuario_id: @users)
    
    @cant = @oferta.count()



  end

    #@oferta = Ofertum.all

    #@users=Usuario.find(current_user.id)

    #@oferta = Ofertum.where('usuario_id = '  )

    #@oferta = Ofertum.where('usuario_id = ' @current_user)



    # ESTA @oferta = Ofertum.where(id: ':usuario_id')




  # GET /oferta/1
  # GET /oferta/1.json
  def show
  end

  # GET /oferta/new
  def new

    @oferta = Ofertum.where(usuario_id: @users)
    
    @ofertum = Ofertum.new
    @cantidad = @oferta.count()
    @cant = @oferta.count()
  end

  # GET /oferta/1/edit
  def edit
  end

  # POST /oferta
  # POST /oferta.json
  def create
    @ofertum = Ofertum.new(ofertum_params)

    respond_to do |format|
      if @ofertum.save
        format.html { redirect_to @ofertum, notice: '' }
        format.json { render :show, status: :created, location: @ofertum }
      else
        format.html { render :new }
        format.json { render json: @ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferta/1
  # PATCH/PUT /oferta/1.json
  def update
    respond_to do |format|
      if @ofertum.update(ofertum_params)
        format.html { redirect_to @ofertum, notice: '' }
        format.json { render :show, status: :ok, location: @ofertum }
      else
        format.html { render :edit }
        format.json { render json: @ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta/1
  # DELETE /oferta/1.json
  def destroy
    @ofertum.destroy
    respond_to do |format|
      format.html { redirect_to oferta_url, notice: '' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofertum
      @ofertum = Ofertum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofertum_params
      params.require(:ofertum).permit(:titulo, :descripcion, :precio, :forma_pago, :extension, :usuario_id, :categorium_id, :ciudad_id, :photo, :categoria_id)
    end
end
