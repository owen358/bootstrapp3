class FormulariosController < ApplicationController
  before_action :set_formulario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new]
  # before_action :user_signed_in?, only: [:show, :new]
  before_action :authenticate_admin, only: [:show, :index]

  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.all
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
    @tick_options = [
    ['padecido desorden alimentaria?', '1'],
    ['comes mucho lacteo o trigo?', '2'],
    ['te gusta comer/preparer comida?', '3'],
    ['compras comida ecológica?', '4'],
    ['añades sal a la comida?', '5'],
    ['tomas café o té descafeinado?', '6'],
    ['usas margarinas?', '7'],
    ['cocinas con aceites vegetales?', '8'],
    ['bebes agua filtrada?', '9'],
    ['has cambiado tu dieta ultimamente?', '10'],
    ['tomas té o café?', '11'],
    ['comes pan blanco?', '12'],
    ['comes mucho comida frita?', '13'],
    ['compras mucha comida para llevar?', '14'],
    ['comes mucha fruta y verdua fresca?  ', '15'],
    ['añades muchas salsas a la comida?', '16'],
    ['comes fuera a menudo?', '17'],
    ['cocinas para mas personas?', '18'],
    ['tienes apetito grande?', '19'],
    ['tu dieta es repetitiva?', '20'],
    ['comes pasta y arroz?', '21'],
    ['comes comida preparada?', '22'],
    ['usas el microondas?', '23'],
    ['eliges comida bajo en grasa?', '24'],
    ]

    @alergia1_options =  [
      ['Historia de alergias en la familia?', '0'],
      ['Alergia diagnosticada?', '1'],
      ['Intoleranica diagnosticada?', '2'],
      ['Has hecho algunas pruebas?', '3'],
      ['Llevas un EpiPen?', '4'],
      ['Historia de reacción alergica?', '5']]

      @limites = [
        ['Tiempo', '0'],
        ['Dinero', '1'],
        ['Entendimiento', '2'],
        ['Fuerza de voluntad', '3'],
        ['Apoyo', '4'],
        ['Otro/ninguno', '5']]

      @activa = [ ['Muy activa  ', '0'],
                  ['Activa', '1'],
                  ['Moderadamente activa', '2'],
                  ['Sedentario', '3']]

  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
  end

  # GET /formularios/1/edit
  def edit
  end

  # POST /formularios
  # POST /formularios.json
  def create
    @formulario = Formulario.new(formulario_params)

    respond_to do |format|
      if @formulario.save
        format.html { redirect_to @formulario, notice: 'Formulario fue creado con éxito.' }
        format.json { render :show, status: :created, location: @formulario }
      else
        format.html { render :new }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularios/1
  # PATCH/PUT /formularios/1.json
  def update
    respond_to do |format|
      if @formulario.update(formulario_params)
        format.html { redirect_to @formulario, notice: 'Formulario se actualizó con éxito.' }
        format.json { render :show, status: :ok, location: @formulario }
      else
        format.html { render :edit }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario.destroy
    respond_to do |format|
      format.html { redirect_to formularios_url, notice: 'Formulario fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private

  def authenticate_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

    # def authenticate
    #   authenticate_user! && current_user.admin?
    # end

    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_params
      params.require(:formulario).permit(:nombre, :fecha, :FdN, :direccion, :sexo, :email, :telefono, :movil, :profesion, :altura, :peso, :motivos, :especialistas, :dieta, :intolerancia, :detalles_1, {limites: []}, :otro_1, :problema1, :p1, :p2, :p3, :problema2, :p4, :p5, :p6, :problema3, :p7, :p8, :p9, :problema4, :p10, :p11, :p12, :otro_2, :medicacion1, :m1, :m2, :m3, :m4, :m5, :m6, :medicacion2, :m7, :m8, :m9, :m10, :m11, :m12, :medicacion3, :m13, :m14, :m15, :m16, :m17, :m18, :otro_3, :suplemento1, :s1, :s2, :s3, :s4, :suplemento2, :s5, :s6, :s7, :s8, :suplemento3, :s9, :s10, :s11, :s12, :otro_4, :madre, :padre, :abuela_mat, :abuela_pat, :abuelo_mat, :abuelo_pat, :hermanos, :hermanas, :tios, :tias, :ninos, :sobrinos, {activa: []}, :ejercicio1, :e1, :e2, :ejercicio2, :e3, :e4, :ejercicio3, :e5, :e6, :otro_5, :fumas1, :fumas2, :fumado, :alcol1, :alcol2, {alergia1: []}, :alergia2, :habitos1, :habitos2, :habitos3, :habitos4, :galletas_tartas_bolleria, :leche, :huevos, :chocolates_dulces, :carne_roja, :carne_blanca, :pescado_blanco, :pezcado_azul, :carne_procesada, :pan, :te, :cafe, :refresco_lata, :agua, :verdura, :ensalada, {tick: []}, :pecho, :dieta_sana, :motivacion, :desayuno1, :desayuno2, :desayuno3, :almuerzo, :almuerzo2, :almuerzo3, :cena1, :cena2, :cena3, :snacks1, :snacks2, :snacks3, :bebidas1, :bebidas2, :bebidas3)
    end
end
