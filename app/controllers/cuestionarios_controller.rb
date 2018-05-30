class CuestionariosController < ApplicationController
  before_action :set_cuestionario, only: [:show, :edit, :update, :destroy]

  # GET /cuestionarios
  # GET /cuestionarios.json
  def index
    @cuestionarios = Cuestionario.all
  end

  # GET /cuestionarios/1
  # GET /cuestionarios/1.json
  def show
  end

  # GET /cuestionarios/new
  def new
    @cuestionario = Cuestionario.new
  end

  # GET /cuestionarios/1/edit
  def edit
  end

  # POST /cuestionarios
  # POST /cuestionarios.json
  def create
    @cuestionario = Cuestionario.new(cuestionario_params)

    respond_to do |format|
      if @cuestionario.save
        format.html { redirect_to @cuestionario, notice: 'Cuestionario was successfully created.' }
        format.json { render :show, status: :created, location: @cuestionario }
      else
        format.html { render :new }
        format.json { render json: @cuestionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuestionarios/1
  # PATCH/PUT /cuestionarios/1.json
  def update
    respond_to do |format|
      if @cuestionario.update(cuestionario_params)
        format.html { redirect_to @cuestionario, notice: 'Cuestionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuestionario }
      else
        format.html { render :edit }
        format.json { render json: @cuestionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuestionarios/1
  # DELETE /cuestionarios/1.json
  def destroy
    @cuestionario.destroy
    respond_to do |format|
      format.html { redirect_to cuestionarios_url, notice: 'Cuestionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuestionario
      @cuestionario = Cuestionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuestionario_params
      params.require(:cuestionario).permit(:nombre, :fecha, :FdN, :direccion, :sexo, :email, :telefono, :movil, :profesion, :altura, :peso, :motivos, :especialistas, :dieta, :intolerancia, :detalles_1, :limites, :otro_1, :problema1, :p1, :p2, :p3, :problema2, :p4, :p5, :p6, :problema3, :p7, :p8, :p9, :problema4, :p10, :p11, :p12, :otro_2, :medicacion1, :m1, :m2, :m3, :m4, :m5, :m6, :medicacion2, :m7, :m8, :m9, :m10, :m11, :m12, :medicacion3, :m13, :m14, :m15, :m16, :m17, :m18, :otro_3, :suplemento1, :s1, :s2, :s3, :s4, :suplemento2, :s5, :s6, :s7, :s8, :suplemento3, :s9, :s10, :s11, :s12, :otro_4, :madre, :padre, :abuela_mat, :abuela_pat, :abuelo_mat, :abuelo_pat, :hermanos, :hermanas, :tios, :tias, :ninos, :sobrinos, :activa, :ejercicio1, :e1, :e2, :ejercicio2, :e3, :e4, :ejercicio3, :e5, :e6, :otro_5, :fumas1, :fumas2, :fumado, :alcol1, :alcol2, :alergia1, :alergia2, :habitos1, :habitos2, :habitos3, :habitos4, :galletas_tartas_bolleria, :leche, :huevos, :chocolates_dulces, :carne_roja, :carne_blanca, :pescado_blanco, :pezcado_azul, :carne_procesada, :pan, :te, :cafe, :refresco_lata, :agua, :verdura, :ensalada, :tick, :pecho, :dieta_sana, :motivacion, :desayuno1, :desayuno2, :desayuno3, :almuerzo, :almuerzo2, :almuerzo3, :cena1, :cena2, :cena3, :snacks1, :snacks2, :snacks3, :bebidas1, :bebidas2, :bebidas3)
    end
end
