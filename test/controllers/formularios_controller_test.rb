require 'test_helper'

class FormulariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulario = formularios(:one)
  end

  test "should get index" do
    get formularios_url
    assert_response :success
  end

  test "should get new" do
    get new_formulario_url
    assert_response :success
  end

  test "should create formulario" do
    assert_difference('Formulario.count') do
      post formularios_url, params: { formulario: { FdN: @formulario.FdN, abuela_mat: @formulario.abuela_mat, abuela_pat: @formulario.abuela_pat, abuelo_mat: @formulario.abuelo_mat, abuelo_pat: @formulario.abuelo_pat, activa: @formulario.activa, agua: @formulario.agua, alcol1: @formulario.alcol1, alcol2: @formulario.alcol2, alergia1: @formulario.alergia1, alergia2: @formulario.alergia2, almuerzo2: @formulario.almuerzo2, almuerzo3: @formulario.almuerzo3, almuerzo: @formulario.almuerzo, altura: @formulario.altura, bebidas1: @formulario.bebidas1, bebidas2: @formulario.bebidas2, bebidas3: @formulario.bebidas3, cafe: @formulario.cafe, carne_blanca: @formulario.carne_blanca, carne_procesada: @formulario.carne_procesada, carne_roja: @formulario.carne_roja, cena1: @formulario.cena1, cena2: @formulario.cena2, cena3: @formulario.cena3, chocolates_dulces: @formulario.chocolates_dulces, desayuno1: @formulario.desayuno1, desayuno2: @formulario.desayuno2, desayuno3: @formulario.desayuno3, detalles_1: @formulario.detalles_1, dieta: @formulario.dieta, dieta_sana: @formulario.dieta_sana, direccion: @formulario.direccion, e1: @formulario.e1, e2: @formulario.e2, e3: @formulario.e3, e4: @formulario.e4, e5: @formulario.e5, e6: @formulario.e6, ejercicio1: @formulario.ejercicio1, ejercicio2: @formulario.ejercicio2, ejercicio3: @formulario.ejercicio3, email: @formulario.email, ensalada: @formulario.ensalada, especialistas: @formulario.especialistas, fecha: @formulario.fecha, fumado: @formulario.fumado, fumas1: @formulario.fumas1, fumas2: @formulario.fumas2, galletas_tartas_bolleria: @formulario.galletas_tartas_bolleria, habitos1: @formulario.habitos1, habitos2: @formulario.habitos2, habitos3: @formulario.habitos3, habitos4: @formulario.habitos4, hermanas: @formulario.hermanas, hermanos: @formulario.hermanos, huevos: @formulario.huevos, intolerancia: @formulario.intolerancia, leche: @formulario.leche, limites: @formulario.limites, m10: @formulario.m10, m11: @formulario.m11, m12: @formulario.m12, m13: @formulario.m13, m14: @formulario.m14, m15: @formulario.m15, m16: @formulario.m16, m17: @formulario.m17, m18: @formulario.m18, m1: @formulario.m1, m2: @formulario.m2, m3: @formulario.m3, m4: @formulario.m4, m5: @formulario.m5, m6: @formulario.m6, m7: @formulario.m7, m8: @formulario.m8, m9: @formulario.m9, madre: @formulario.madre, medicacion1: @formulario.medicacion1, medicacion2: @formulario.medicacion2, medicacion3: @formulario.medicacion3, motivacion: @formulario.motivacion, motivos: @formulario.motivos, movil: @formulario.movil, ninos: @formulario.ninos, nombre: @formulario.nombre, otro_1: @formulario.otro_1, otro_2: @formulario.otro_2, otro_3: @formulario.otro_3, otro_4: @formulario.otro_4, otro_5: @formulario.otro_5, p10: @formulario.p10, p11: @formulario.p11, p12: @formulario.p12, p1: @formulario.p1, p2: @formulario.p2, p3: @formulario.p3, p4: @formulario.p4, p5: @formulario.p5, p6: @formulario.p6, p7: @formulario.p7, p8: @formulario.p8, p9: @formulario.p9, padre: @formulario.padre, pan: @formulario.pan, pecho: @formulario.pecho, pescado_blanco: @formulario.pescado_blanco, peso: @formulario.peso, pezcado_azul: @formulario.pezcado_azul, problema1: @formulario.problema1, problema2: @formulario.problema2, problema3: @formulario.problema3, problema4: @formulario.problema4, profesion: @formulario.profesion, refresco_lata: @formulario.refresco_lata, s10: @formulario.s10, s11: @formulario.s11, s12: @formulario.s12, s1: @formulario.s1, s2: @formulario.s2, s3: @formulario.s3, s4: @formulario.s4, s5: @formulario.s5, s6: @formulario.s6, s7: @formulario.s7, s8: @formulario.s8, s9: @formulario.s9, sexo: @formulario.sexo, snacks1: @formulario.snacks1, snacks2: @formulario.snacks2, snacks3: @formulario.snacks3, sobrinos: @formulario.sobrinos, suplemento1: @formulario.suplemento1, suplemento2: @formulario.suplemento2, suplemento3: @formulario.suplemento3, te: @formulario.te, telefono: @formulario.telefono, tias: @formulario.tias, tick: @formulario.tick, tios: @formulario.tios, verdura: @formulario.verdura } }
    end

    assert_redirected_to formulario_url(Formulario.last)
  end

  test "should show formulario" do
    get formulario_url(@formulario)
    assert_response :success
  end

  test "should get edit" do
    get edit_formulario_url(@formulario)
    assert_response :success
  end

  test "should update formulario" do
    patch formulario_url(@formulario), params: { formulario: { FdN: @formulario.FdN, abuela_mat: @formulario.abuela_mat, abuela_pat: @formulario.abuela_pat, abuelo_mat: @formulario.abuelo_mat, abuelo_pat: @formulario.abuelo_pat, activa: @formulario.activa, agua: @formulario.agua, alcol1: @formulario.alcol1, alcol2: @formulario.alcol2, alergia1: @formulario.alergia1, alergia2: @formulario.alergia2, almuerzo2: @formulario.almuerzo2, almuerzo3: @formulario.almuerzo3, almuerzo: @formulario.almuerzo, altura: @formulario.altura, bebidas1: @formulario.bebidas1, bebidas2: @formulario.bebidas2, bebidas3: @formulario.bebidas3, cafe: @formulario.cafe, carne_blanca: @formulario.carne_blanca, carne_procesada: @formulario.carne_procesada, carne_roja: @formulario.carne_roja, cena1: @formulario.cena1, cena2: @formulario.cena2, cena3: @formulario.cena3, chocolates_dulces: @formulario.chocolates_dulces, desayuno1: @formulario.desayuno1, desayuno2: @formulario.desayuno2, desayuno3: @formulario.desayuno3, detalles_1: @formulario.detalles_1, dieta: @formulario.dieta, dieta_sana: @formulario.dieta_sana, direccion: @formulario.direccion, e1: @formulario.e1, e2: @formulario.e2, e3: @formulario.e3, e4: @formulario.e4, e5: @formulario.e5, e6: @formulario.e6, ejercicio1: @formulario.ejercicio1, ejercicio2: @formulario.ejercicio2, ejercicio3: @formulario.ejercicio3, email: @formulario.email, ensalada: @formulario.ensalada, especialistas: @formulario.especialistas, fecha: @formulario.fecha, fumado: @formulario.fumado, fumas1: @formulario.fumas1, fumas2: @formulario.fumas2, galletas_tartas_bolleria: @formulario.galletas_tartas_bolleria, habitos1: @formulario.habitos1, habitos2: @formulario.habitos2, habitos3: @formulario.habitos3, habitos4: @formulario.habitos4, hermanas: @formulario.hermanas, hermanos: @formulario.hermanos, huevos: @formulario.huevos, intolerancia: @formulario.intolerancia, leche: @formulario.leche, limites: @formulario.limites, m10: @formulario.m10, m11: @formulario.m11, m12: @formulario.m12, m13: @formulario.m13, m14: @formulario.m14, m15: @formulario.m15, m16: @formulario.m16, m17: @formulario.m17, m18: @formulario.m18, m1: @formulario.m1, m2: @formulario.m2, m3: @formulario.m3, m4: @formulario.m4, m5: @formulario.m5, m6: @formulario.m6, m7: @formulario.m7, m8: @formulario.m8, m9: @formulario.m9, madre: @formulario.madre, medicacion1: @formulario.medicacion1, medicacion2: @formulario.medicacion2, medicacion3: @formulario.medicacion3, motivacion: @formulario.motivacion, motivos: @formulario.motivos, movil: @formulario.movil, ninos: @formulario.ninos, nombre: @formulario.nombre, otro_1: @formulario.otro_1, otro_2: @formulario.otro_2, otro_3: @formulario.otro_3, otro_4: @formulario.otro_4, otro_5: @formulario.otro_5, p10: @formulario.p10, p11: @formulario.p11, p12: @formulario.p12, p1: @formulario.p1, p2: @formulario.p2, p3: @formulario.p3, p4: @formulario.p4, p5: @formulario.p5, p6: @formulario.p6, p7: @formulario.p7, p8: @formulario.p8, p9: @formulario.p9, padre: @formulario.padre, pan: @formulario.pan, pecho: @formulario.pecho, pescado_blanco: @formulario.pescado_blanco, peso: @formulario.peso, pezcado_azul: @formulario.pezcado_azul, problema1: @formulario.problema1, problema2: @formulario.problema2, problema3: @formulario.problema3, problema4: @formulario.problema4, profesion: @formulario.profesion, refresco_lata: @formulario.refresco_lata, s10: @formulario.s10, s11: @formulario.s11, s12: @formulario.s12, s1: @formulario.s1, s2: @formulario.s2, s3: @formulario.s3, s4: @formulario.s4, s5: @formulario.s5, s6: @formulario.s6, s7: @formulario.s7, s8: @formulario.s8, s9: @formulario.s9, sexo: @formulario.sexo, snacks1: @formulario.snacks1, snacks2: @formulario.snacks2, snacks3: @formulario.snacks3, sobrinos: @formulario.sobrinos, suplemento1: @formulario.suplemento1, suplemento2: @formulario.suplemento2, suplemento3: @formulario.suplemento3, te: @formulario.te, telefono: @formulario.telefono, tias: @formulario.tias, tick: @formulario.tick, tios: @formulario.tios, verdura: @formulario.verdura } }
    assert_redirected_to formulario_url(@formulario)
  end

  test "should destroy formulario" do
    assert_difference('Formulario.count', -1) do
      delete formulario_url(@formulario)
    end

    assert_redirected_to formularios_url
  end
end
