#Primero se ejecutan las consultas de materias y tipos usuarios ya que son las unicas que no contiene foraneas y para que las demas consultas de las otras tablas esten asociadas a su campo foraneo
use ues_rr_ii;
#Materias
insert into materias(registro, idMateria, nombreMateria, fechaModificacion) values
(null, 'EIN','Economia Internacional', CURDATE()),
(null, 'TRI','Teoria de las Relaciones Internacionales', CURDATE()),
(null, 'CIN','Cooperacion Internacional', CURDATE());
#Tipos de usuario
insert into tipousuarios(registro, idTipo, tipoUsuario, fechaModificacion) values
(null, 'ADM','Administrador', CURDATE()),
(null, 'USR','Usuario', CURDATE());

#Preguntas
#Ejemplo de ingreso de preguntas para ECONOMIA INTERNACIONAL se manda como parametro EIN en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, 'EIN00001', 'La palabra economía tiene una raíz etimológica que significa:', 'EIN', CURDATE());

#Preguntas subsiguientes
#EIN
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
  (null, getIdPregunta('EIN'), 'La relación entre las Ciencias Económicas y la economía internacional es:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'La economía internacional se divide en:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Un sistema económico se ocupa de:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Un sistema económico internacional puede estar compuesto por:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Un sistema económico mundial puede estar compuesto por:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Al actor dominante de un sistema económico internacional se le conoce como:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Al actor subordinado de un sistema económico internacional se le conoce como:', 'EIN', CURDATE()),
  (null, getIdPregunta('EIN'), 'Todos los sistemas económicos internacionales presentan la estructura:', 'EIN', CURDATE()),#9
  (null, getIdPregunta('EIN'), 'Tras la caída del Bloque Soviético, las relaciones en el sistema económico mundial pueden darse:', 'EIN', CURDATE()),#10
  (null, getIdPregunta('EIN'), 'La categoría superior a un sistema económico mundial es:', 'EIN', CURDATE()),#11
  (null, getIdPregunta('EIN'), 'En un sistema económico internacional, la relación centro-periferia está determinada por:', 'EIN', CURDATE()),#12
  (null, getIdPregunta('EIN'), 'En un sistema económico internacional, no puede verificarse la siguiente condición:', 'EIN', CURDATE()),#13
  (null, getIdPregunta('EIN'), 'En un sistema económico mundial, no puede verificarse la siguiente condición:', 'EIN', CURDATE()),#14
  (null, getIdPregunta('EIN'), 'Algunos actores de la economía internacional son:', 'EIN', CURDATE()),#15
  (null, getIdPregunta('EIN'), 'El comercio internacional tiene sus orígenes en:', 'EIN', CURDATE()),#16
  (null, getIdPregunta('EIN'), 'La solución al crecimiento desmedido del comercio itinerante en la edad feudal fue:', 'EIN', CURDATE()),#17
  (null, getIdPregunta('EIN'), 'El establecimiento y crecimiento de almacenes en las afueras de los feudos, ocasionó competencia por el poder entre:', 'EIN', CURDATE()),#18
  (null, getIdPregunta('EIN'), 'Las relaciones comerciales durante la Guerra Fría fueron en la forma:', 'EIN', CURDATE()),#19
  (null, getIdPregunta('EIN'), 'En 1974, Naciones Unidas convocó a una conferencia para restablecer el  rumbo de las relaciones económicas mundiales; dicha conferencia se conoce como:', 'EIN', CURDATE()),#20
  (null, getIdPregunta('EIN'), 'Los principios del NOEI incluían:', 'EIN', CURDATE()),#21
  (null, getIdPregunta('EIN'), 'El comercio puede definirse como:', 'EIN', CURDATE()),#22
  (null, getIdPregunta('EIN'), 'El mercado puede definirse como:', 'EIN', CURDATE()),#23
  (null, getIdPregunta('EIN'), 'Puede decirse que el dinero es una mercancía ya que:', 'EIN', CURDATE()),#24
  (null, getIdPregunta('EIN'), 'El concepto de una mercancía cuyo único fin es el de representar el valor de otras mercancías e intercambiarse por ellas es:', 'EIN', CURDATE()),#25
  (null, getIdPregunta('EIN'), 'Una moneda que tiene la capacidad de intercambiarse por otra, es conocida como:', 'EIN', CURDATE()),#26
  (null, getIdPregunta('EIN'), 'La representación física de una cantidad específica de una moneda, es conocida como:', 'EIN', CURDATE()),#27
  (null, getIdPregunta('EIN'), 'La totalidad del circulante de una moneda, es conocido como:', 'EIN', CURDATE()),#28
  (null, getIdPregunta('EIN'), 'La relación entre el comercio y el comercio internacional es:','EIN', CURDATE()),#29
  (null, getIdPregunta('EIN'), 'El principio mercantilista de Laissez Faire, laissez passer, implicaba que:', 'EIN', CURDATE()),#30
  (null, getIdPregunta('EIN'), 'El principio del orden natural retomado por los mercantilistas, fue obra de:', 'EIN', CURDATE()),#31
  (null, getIdPregunta('EIN'), 'El postulado sobre la perfección en la autorregulación de la relación de oferta y demanda, es conocido como:', 'EIN', CURDATE()),#32
  (null, getIdPregunta('EIN'), 'El postulado sobre la tendencia natural del ser humano a acumular riquezas, es conocido como:', 'EIN', CURDATE()),#33
  (null, getIdPregunta('EIN'), 'El principio que da pie al comercio internacional afirma que:', 'EIN', CURDATE()),#34
  (null, getIdPregunta('EIN'), 'Un país autárquico es aquel que:', 'EIN', CURDATE()),#35
  (null, getIdPregunta('EIN'), 'Un ejemplo de país autárquico es:', 'EIN', CURDATE()),#36
  (null, getIdPregunta('EIN'), 'Un ejemplo de país autárquico es:', 'EIN', CURDATE()),#37
  (null, getIdPregunta('EIN'), 'Uno de los principios del comercio internacional es:', 'EIN', CURDATE()),#38
  (null, getIdPregunta('EIN'), 'Uno de los principios del comercio internacional es:', 'EIN', CURDATE()),#39
  (null, getIdPregunta('EIN'), 'En el siglo XIX, la potencia europea que tenía la tendencia generalizada y desmedida a acumular metales preciosos era:', 'EIN', CURDATE()),#40
  (null, getIdPregunta('EIN'), 'La acumulación desmedida de metales preciosos o de circulante genera:', 'EIN', CURDATE()),#41
  (null, getIdPregunta('EIN'), 'Ante la acumulación desmedida de metales preciosos, un país puede perder:', 'EIN', CURDATE()),#42
  (null, getIdPregunta('EIN'), 'David Hume postuló que para aumentar la producción, se debía:', 'EIN', CURDATE()),#43
  (null, getIdPregunta('EIN'), 'Son los principales exponentes de la Escuela Clásica del Comercio Internacional:', 'EIN', CURDATE()),#44
  (null, getIdPregunta('EIN'), 'Trata sobre la ventaja que tiene un país sobre otro en una mercancía, de la cual es segundo no es productor:', 'EIN', CURDATE()),#45
  (null, getIdPregunta('EIN'), 'Trata sobre la ventaja que tiene un país sobre en una mercancía, cuando se especializa en la producción de ésta:', 'EIN', CURDATE()),#46
  (null, getIdPregunta('EIN'), 'Personaje que planteó la Teoría de los Valores Internacionales:', 'EIN', CURDATE()),#47
  (null, getIdPregunta('EIN'), 'La fórmula n-1 es un aporte a la teoría del comercio internacional, por parte de la:', 'EIN', CURDATE()),#48
  (null, getIdPregunta('EIN'), 'Plantea que los países se especializan en la exportación de los bienes cuya producción es intensiva internamente, mientras que tienden a importar aquellos bienes de escasa producción interna:', 'EIN', CURDATE()),#49
  (null, getIdPregunta('EIN'), 'Se define como el conjunto de acciones que realiza el Estado en torno a la actividad comercial:', 'EIN', CURDATE()),#50
  (null, getIdPregunta('EIN'), 'En El Salvador, la institución indicada para definir la política comercial es:', 'EIN', CURDATE()),#51
  (null, getIdPregunta('EIN'), 'Los aranceles que se gravan en forma de porcentaje del precio del producto, son conocidos como:', 'EIN', CURDATE()),#52
  (null, getIdPregunta('EIN'), 'Los aranceles que se gravan en forma de constante a cada unidad importada, son conocidos como:', 'EIN', CURDATE()),#53
  (null, getIdPregunta('EIN'), 'Si un Estado paga a alguien para que no produzca en virtud de no alterar el equilibrio de la oferta y la demanda, se trata de una medida conocida como:', 'EIN', CURDATE()),#54
  (null, getIdPregunta('EIN'), 'Cuando un Estado impone restricciones al ingreso de producto extranjero en virtud de no saturar el mercado interno, se trata de una medida conocida como:', 'EIN', CURDATE()),#55
  (null, getIdPregunta('EIN'), 'Cuando un Estado se abstiene de realizar exportaciones a otro Estado en un determinado producto, se trata de una medida conocida como:', 'EIN', CURDATE()),#56
  (null, getIdPregunta('EIN'), 'Los requisitos de contenido nacional consisten en:', 'EIN', CURDATE()),#57
  (null, getIdPregunta('EIN'), 'Cuando el Estado requiere una determinada calidad por parte de un producto extranjero, se trata de una medida conocida como:', 'EIN', CURDATE()),#58
  (null, getIdPregunta('EIN'), 'Cuando el Estado requiere que se demuestre que un producto extranjero no es dañino a la salud, se trata de una medida conocida como:', 'EIN', CURDATE()),#59
  (null, getIdPregunta('EIN'), 'Las medidas antidumping pretenden:', 'EIN', CURDATE()),#60
  (null, getIdPregunta('EIN'), 'Las trabas burocráticas que pretenden retrasar o perjudicar a los exportadores, se conocen como:', 'EIN', CURDATE()),#61
  (null, getIdPregunta('EIN'), 'Los obstáculos técnicos al comercio están prohibidos en El Salvador por:', 'EIN', CURDATE()),#62
  (null, getIdPregunta('EIN'), 'El mercado cambiario también es conocido como:', 'EIN', CURDATE()),#63
  (null, getIdPregunta('EIN'), 'Son mercados internacionales:', 'EIN', CURDATE()),#64
  (null, getIdPregunta('EIN'), 'La mercancía traficada en el mercado cambiario es:', 'EIN', CURDATE()),#65
  (null, getIdPregunta('EIN'), 'Se dice que Forex está en todas partes ya que:', 'EIN', CURDATE()),#66
  (null, getIdPregunta('EIN'), 'Se dice que Forex goza de extrema liquidez ya que:', 'EIN', CURDATE()),#67
  (null, getIdPregunta('EIN'), 'El propietario de Forex es:', 'EIN', CURDATE()),#68
  (null, getIdPregunta('EIN'), 'La principal casa cambiaria del mundo es:', 'EIN', CURDATE()),#69
  (null, getIdPregunta('EIN'), 'Las tres divisas más traficadas en Forex son:', 'EIN', CURDATE()),#70
  (null, getIdPregunta('EIN'), 'Forma parte del proceso de determinación del precio de la divisa:', 'EIN', CURDATE()),#71
  (null, getIdPregunta('EIN'), 'Es la última etapa en el proceso de determinación del precio de la divisa:', 'EIN', CURDATE()),#72
  (null, getIdPregunta('EIN'), 'Es el conjunto de acciones que realiza el Estado al respecto de la moneda y los tipos de interés:', 'EIN', CURDATE()),#73
  (null, getIdPregunta('EIN'), 'La abstención voluntaria estatal de intervenir en el proceso de determinación del precio de su divisa, es considerada como:', 'EIN', CURDATE()),#74
  (null, getIdPregunta('EIN'), 'Es el número de unidades de una divisa que hay que entregar para intercambiarla por otra:', 'EIN', CURDATE()),#75
  (null, getIdPregunta('EIN'), 'En El Salvador, es el responsable de establecer la oferta monetaria:', 'EIN', CURDATE()),#76
  (null, getIdPregunta('EIN'), 'Acción legislativa que inhibe al Estado salvadoreño para emitir moneda:', 'EIN', CURDATE()),#77
  (null, getIdPregunta('EIN'), 'Es el modelo estatal según el cual se adopta la política cambiaria nacional:', 'EIN', CURDATE()),#78
  (null, getIdPregunta('EIN'), 'Calificación que mide el grado de flexibilidad cambiaria de un sistema cambiario:', 'EIN', CURDATE()),#79
  (null, getIdPregunta('EIN'), 'Existen regímenes cambiarios de dos tipos:', 'EIN', CURDATE()),#80
  (null, getIdPregunta('EIN'), 'Son regímenes cambiarios fijos:', 'EIN', CURDATE()),#81
  (null, getIdPregunta('EIN'), 'Régimen cambiario en el que se establece un pacto en el cual el Estado se compromete a no emitir moneda sin respaldo, a cambio de que el mercado respete el tipo de cambio fijo:', 'EIN', CURDATE()),#82
  (null, getIdPregunta('EIN'), 'Régimen cambiario en el que el Estado adopta una moneda extranjera en detrimento de la propia:', 'EIN', CURDATE()),#83
  (null, getIdPregunta('EIN'), 'Medida estatal de congelamiento de las cuentas de los clientes de los bancos, para subsanar la falta de liquidez pública:','EIN', CURDATE()),#84
  (null, getIdPregunta('EIN'), 'Régimen cambiario en el cual se permite una fluctuación dentro de los límites establecidos por el Estado:', 'EIN', CURDATE()),#85
  (null, getIdPregunta('EIN'), 'Régimen cambiario en el cual el Estado hace fluctuar el precio de la divisa de manera arbitraria:', 'EIN', CURDATE()),#86
  (null, getIdPregunta('EIN'), 'Régimen cambiario en el cual el Estado utiliza su política monetaria para influir en la fluctuación de su divisa:', 'EIN', CURDATE()),#87
  (null, getIdPregunta('EIN'), 'Espacio no necesariamente físico, donde se trafican instrumentos financieros:', 'EIN', CURDATE()),#88
  (null, getIdPregunta('EIN'), 'El vendedor se obliga a pagar el monto prestado más las ganancias proporcionales si las hubieren:', 'EIN', CURDATE()),#89
  (null, getIdPregunta('EIN'), 'El vendedor se obliga a pagar el monto prestado, o a entregar la cantidad de oro de la reserva proporcional a la deuda:', 'EIN', CURDATE()),#90
  (null, getIdPregunta('EIN'), 'Los dólares que circulan en El Salvador, son:', 'EIN', CURDATE()),#91
  (null, getIdPregunta('EIN'), 'La banca comercial tiene su principal fuente de ingresos en:', 'EIN', CURDATE()),#92
  (null, getIdPregunta('EIN'), 'El mercado de valores también es conocido como:', 'EIN', CURDATE()),#93
  (null, getIdPregunta('EIN'), 'El mercado de valores es propiedad de:', 'EIN', CURDATE()),#94
  (null, getIdPregunta('EIN'), 'Documento que ampara la propiedad de valores financieros:', 'EIN', CURDATE()),#95
  (null, getIdPregunta('EIN'), 'Valor numérico que mide el rendimiento de una bolsa de valores durante 24 horas, con respecto a las 24 horas previas:', 'EIN', CURDATE()),#96
  (null, getIdPregunta('EIN'), 'Porción de una empresa que representa una parte de su capital social, pudiendo ser traficada en el mercado bursátil:', 'EIN', CURDATE()),#97
  (null, getIdPregunta('EIN'), 'El Nikkei es el índice bursátil de:', 'EIN', CURDATE()),#98
  (null, getIdPregunta('EIN'), 'Entidad cuyo fin es el de evaluar los factores del mercado financiero para establecer su nivel de riesgo', 'EIN', CURDATE()),#99
  (null, getIdPregunta('EIN'), 'A las personas naturales se les abre un expediente de riesgo financiero cuando:', 'EIN', CURDATE()),#100
  (null, getIdPregunta('EIN'), 'Las calificadoras de riesgo utilizan la información financiera de las personas para:', 'EIN', CURDATE()),#101
  (null, getIdPregunta('EIN'), 'Para efectos de obtención de balanza de pagos, los impuestos pagados al Estado se obtendrán exclusivamente de:', 'EIN', CURDATE()),#102
  (null, getIdPregunta('EIN'), 'El Consenso de Washington fue producto de una conferencia mundial que pretendía:', 'EIN', CURDATE()),#103
  (null, getIdPregunta('EIN'), 'El encargado de ejecutar las medidas adoptadas en el Consenso de Washington es:', 'EIN', CURDATE()),#104
  (null, getIdPregunta('EIN'), 'Conferencia donde se expone que la pobreza es producto de la ineficiente estructura económica de los países en esa condición', 'EIN', CURDATE()),#105
  (null, getIdPregunta('EIN'), 'Son medidas parte de los Programas de Ajuste Estructural', 'EIN', CURDATE()),#106
  (null, getIdPregunta('EIN'), 'Se genera cuando hay un excedente en la balanza de pagos', 'EIN', CURDATE()),#107
  (null, getIdPregunta('EIN'), 'Son el conjunto de políticas económicas que pretenden llevar a equilibrio la balanza de pagos', 'EIN', CURDATE()),#108
  (null, getIdPregunta('EIN'), 'Método de ajuste externo que consiste en devaluar la moneda para que las personas consuman menos productos extranjeros', 'EIN', CURDATE()),#109
  (null, getIdPregunta('EIN'), 'Método de ajuste externo que consiste en restringir el acceso al crédito para que las personas se vean obligadas a ahorrar', 'EIN', CURDATE()),#110
  (null, getIdPregunta('EIN'), 'Método de ajuste externo que consiste en generar una contracción económica para obtener desempleo', 'EIN', CURDATE()),#111
  (null, getIdPregunta('EIN'), 'Método de ajuste externo que consiste en generar las condiciones para que las empresas nacionales sean atractivas para los inversionistas extranjeros', 'EIN', CURDATE()),#112
  (null, getIdPregunta('EIN'), 'La deuda externa se define como:', 'EIN', CURDATE()),#113
  (null, getIdPregunta('EIN'), 'Es la deuda adquirida por gobiernos de facto, autoritarios o democráticos, cuya finalidad es el enriquecimiento personal o el derroche de los recursos', 'EIN', CURDATE()),#114
  (null, getIdPregunta('EIN'), 'La expresión compra de deuda se refiere a:', 'EIN', CURDATE()),#115
  (null, getIdPregunta('EIN'), 'Las crisis financieras pueden verificar, individual o simultáneamente, los siguientes tipos de crisis:', 'EIN', CURDATE()),#116
  (null, getIdPregunta('EIN'), 'Es el conjunto de instituciones, normas, reglas, acuerdos e instrumentos estructurados para facilitar las relaciones monetarias entre los países', 'EIN', CURDATE()),#117
  (null, getIdPregunta('EIN'), 'Son funciones de un sistema monetario internacional:', 'EIN', CURDATE()),#118
  (null, getIdPregunta('EIN'), 'El Patrón Oro encontró su final producto de:', 'EIN', CURDATE()),#119
  (null, getIdPregunta('EIN'), 'La conversión entre divisas en el Patrón Oro se daba en la forma:', 'EIN', CURDATE()),#120
  (null, getIdPregunta('EIN'), 'El nombre de la moneda mundial propuesta por Keynes en Bretton Woods fue:', 'EIN', CURDATE()),#121
  (null, getIdPregunta('EIN'), 'Se conoce como el pago que hace un Estado a otro, para que le produzca una cantidad de especie monetaria', 'EIN', CURDATE()),#122
  (null, getIdPregunta('EIN'), 'La conversión entre divisas en el Sistema Monetario Internacional de Bretton Woods se daba en la forma:', 'EIN', CURDATE()),#123
  (null, getIdPregunta('EIN'), 'El papel del oro en el Sistema Monetario Internacional Régimen de Flotación es:', 'EIN', CURDATE()),#124
  (null, getIdPregunta('EIN'), 'La conversión entre divisas en el Sistema Monetario Internacional Régimen de Flotación se da en la forma:', 'EIN', CURDATE());#125
# Fin 125 preguntas
# (null, getIdPregunta('EIN'), 'Pregunta2', 'EIN', CURDATE()),



insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Administración del negocio', 'EIN00001', 0, CURDATE()),
(null, 'Administración de la casa', 'EIN00001', 1, CURDATE()),
(null, 'Administración de las necesidades', 'EIN00001', 0, CURDATE()),
(null, 'Administración de la riqueza', 'EIN00001', 0, CURDATE()),

(null, 'La primera es una rama de la segunda', 'EIN00002', 0, CURDATE()),
(null, 'La segunda es una rama de la primera', 'EIN00002', 1, CURDATE()),
(null, 'Ambas están al mismo nivel', 'EIN00002', 0, CURDATE()),
(null, 'No hay relación entre ellas', 'EIN00002', 0, CURDATE()),

(null, 'Comercio internacional, finanzas internacionales y sistema monetario internacional', 'EIN00003', 1, CURDATE()),
(null, 'Comercio internacional, finanzas internacionales y mercado de divisas', 'EIN00003', 0, CURDATE()),
(null, 'Comercio internacional, sistema bancario internacional y sistema monetario internacional', 'EIN00003', 0, CURDATE()),
(null, 'Comercio internacional, sistema monetario internacional y endeudamiento externo', 'EIN00003', 0, CURDATE()),

(null, 'Organizar la producción, distribución y consumo en beneficio de una población', 'EIN00004', 1, CURDATE()),
(null, 'Organizar la producción, distribución y consumo en beneficio de la población', 'EIN00004', 0, CURDATE()),
(null, 'Ejecutar la producción, distribución y consumo en beneficio de una población', 'EIN00004', 0, CURDATE()),
(null, 'Satisfacer las necesidades de la población que puede pagar', 'EIN00004', 0, CURDATE()),

(null, 'Dos sistemas económicos', 'EIN00005', 0, CURDATE()),
(null, 'Un sistema económico poliforme', 'EIN00005', 0, CURDATE()),
(null, 'Varios sistemas económicos', 'EIN00005', 1, CURDATE()),
(null, 'Varios sistemas económicos internacionales', 'EIN00005', 0, CURDATE()),

(null, 'Dos sistemas económicos', 'EIN00006', 0, CURDATE()),
(null, 'Un sistema económico poliforme', 'EIN00006', 0, CURDATE()),
(null, 'Varios sistemas económicos', 'EIN00006', 0, CURDATE()),
(null, 'Varios sistemas económicos internacionales', 'EIN00006', 1, CURDATE()),

(null, 'Centro', 'EIN00007', 1, CURDATE()),
(null, 'Imperio', 'EIN00007', 0, CURDATE()),
(null, 'Referente', 'EIN00007', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00007', 0, CURDATE()),

(null, 'Periferia', 'EIN00008', 1, CURDATE()),
(null, 'Secundario', 'EIN00008', 0, CURDATE()),
(null, 'Esclavo', 'EIN00008', 0, CURDATE()),
(null, 'Proletario', 'EIN00008', 0, CURDATE()),

(null, 'Centro-periferia', 'EIN00009', 1, CURDATE()),
(null, 'Periferia-satélites', 'EIN00009', 0, CURDATE()),
(null, 'Centro-circundantes', 'EIN00009', 0, CURDATE()),
(null, 'Centro-suburbios', 'EIN00009', 0, CURDATE()),

(null, 'Centro-centro', 'EIN00010', 0, CURDATE()),
(null, 'Centro-periferia', 'EIN00010', 0, CURDATE()),
(null, 'Periferia-satélites', 'EIN00010', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00010', 1, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Sistema económico global', 'EIN00011', 0, CURDATE()),
(null, 'Sistema económico absoluto', 'EIN00011', 0, CURDATE()),
(null, 'Sistema económico universal', 'EIN00011', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00011', 1, CURDATE()),

(null, 'Cercanía geográfica', 'EIN00012', 0, CURDATE()),
(null, 'Influencia económica-comercial', 'EIN00012', 1, CURDATE()),
(null, 'Similitudes ideológicas', 'EIN00012', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00012', 0, CURDATE()),

(null, 'Un centro poliperiférico', 'EIN00013', 0, CURDATE()),
(null, 'Dos centros y varias periferias', 'EIN00013', 1, CURDATE()),
(null, 'Periferias con volumen comercial heterogéneo', 'EIN00013', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00013', 0, CURDATE()),

(null, 'Varias periferias sin un centro', 'EIN00014', 1, CURDATE()),
(null, 'Varios centros', 'EIN00014', 0, CURDATE()),
(null, 'Periferias con volumen comercial heterogéneo', 'EIN00014', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00014', 0, CURDATE()),

(null, 'Estados y empresas transnacionales', 'EIN00015', 0, CURDATE()),
(null, 'Estados y organismos financieros internacionales', 'EIN00015', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00015', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00015', 0, CURDATE()),

(null, 'Los comerciantes que iban de feudo en feudo', 'EIN00016', 1, CURDATE()),
(null, 'Los señores feudales pedían mercancías de otros feudos', 'EIN00016', 0, CURDATE()),
(null, 'La bolsa de valores internacionalizó el mercado', 'EIN00016', 0, CURDATE()),
(null, 'La revolución industrial como motor del comercio', 'EIN00016', 0, CURDATE()),

(null, 'Ampliar los recursos para el desarrollo de nuevos medios de trasporte', 'EIN00017', 0, CURDATE()),
(null, 'Reducir el tamaño de las mercancías, manteniendo su precio', 'EIN00017', 0, CURDATE()),
(null, 'Aumentar el precio de las mercancías para compensar el costo del transporte', 'EIN00017', 0, CURDATE()),
(null, 'Establecer almacenes en los suburbios de los feudos', 'EIN00017', 1, CURDATE()),

(null, 'Productores agrícolas y los comerciantes', 'EIN00018', 0, CURDATE()),
(null, 'Artesanos y los comerciantes', 'EIN00018', 0, CURDATE()),
(null, 'Señores feudales y comerciantes', 'EIN00018', 1, CURDATE()),
(null, 'Todas las anteriores', 'EIN00018', 0, CURDATE()),

(null, 'Centro-centro', 'EIN00019', 0, CURDATE()),
(null, 'Centro-periferia', 'EIN00019', 1, CURDATE()),
(null, 'Periferia-satélites', 'EIN00019', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00019', 0, CURDATE()),

(null, 'Nuevo Régimen Económico Internacional', 'EIN00020', 0, CURDATE()),
(null, 'Nuevo Orden Económico Internacional', 'EIN00020', 1, CURDATE()),
(null, 'Régimen Económico Global', 'EIN00020', 0, CURDATE()),
(null, 'Orden Económico Internacional Moderno', 'EIN00020', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Igualdad soberana entre los Estados y soberanía sobre los recursos naturales', 'EIN00021', 1, CURDATE()),
(null, 'Soberanía sobre los recursos naturales y libertad de elección de sistema monetario internacional', 'EIN00021', 0, CURDATE()),
(null, 'Participación común en la solución de problemas económicos internacionales y libertad en la elección de cooperación no reembolsable', 'EIN00021', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00021', 0, CURDATE()),

(null, 'Intercambio de bienes, que con fin lucrativo, satisfacen las necesidades de las personas', 'EIN00022', 0, CURDATE()),
(null, 'Intercambio de mercancías, que con fin lucrativo, satisfacen las necesidades de las personas', 'EIN00022', 0, CURDATE()),
(null, 'Intercambio de mercancías que satisfacen las necesidades de las personas', 'EIN00022', 0, CURDATE()),
(null, 'Intercambio de mercancías, que con fin lucrativo, satisfacen las necesidades de los consumidores', 'EIN00022', 1, CURDATE()),

(null, 'A	Lugar físico donde se ejecutan compras y ventas de mercancías', 'EIN00023', 0, CURDATE()),
(null, 'Ámbito de acción donde se relacionan oferentes y demandantes', 'EIN00023', 1, CURDATE()),
(null, 'Ámbito teórico donde se da la relación entre oferta y demanda', 'EIN00023', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00023', 0, CURDATE()),

(null, 'Su producción tiene un costo, por lo que genera un intercambio entre el productor y el Estado', 'EIN00024', 0, CURDATE()),
(null, 'Tiene la capacidad de intercambiarse por otras mercancías', 'EIN00024', 1, CURDATE()),
(null, 'Puede intercambiarse libremente gracias a la oferta y la demanda', 'EIN00024', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00024', 0, CURDATE()),

(null, 'Dinero', 'EIN00025', 1, CURDATE()),
(null, 'Moneda', 'EIN00025', 0, CURDATE()),
(null, 'Divisa', 'EIN00025', 0, CURDATE()),
(null, 'Especie monetaria', 'EIN00025', 0, CURDATE()),

(null, 'Dinero', 'EIN00026', 0, CURDATE()),
(null, 'Moneda', 'EIN00026', 0, CURDATE()),
(null, 'Divisa', 'EIN00026', 1, CURDATE()),
(null, 'Especie monetaria', 'EIN00026', 0, CURDATE()),

(null, 'Dinero', 'EIN00027', 0, CURDATE()),
(null, 'Moneda', 'EIN00027', 0, CURDATE()),
(null, 'Divisa', 'EIN00027', 0, CURDATE()),
(null, 'Especie monetaria', 'EIN00027', 1, CURDATE()),

(null, 'Dinero', 'EIN00028', 0, CURDATE()),
(null, 'Moneda', 'EIN00028', 0, CURDATE()),
(null, 'Masa monetaria', 'EIN00028', 1, CURDATE()),
(null, 'Especie monetaria', 'EIN00028', 0, CURDATE()),

(null, 'El primero es un caso especial del segundo', 'EIN00029', 0, CURDATE()),
(null, 'El segundo es un caso especial del primero', 'EIN00029', 1, CURDATE()),
(null, 'Ambos se encuentras en la misma categoría', 'EIN00029', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00029', 0, CURDATE()),

(null, 'El Estado debía dejar que el mercado llevase las riendas de la actividad comercial', 'EIN00030', 1, CURDATE()),
(null, 'El Estado debía intervenir en la actividad comercial', 'EIN00030', 0, CURDATE()),
(null, 'El Estado debía propiciar la oferta de mercancías para fomentar la actividad comercial', 'EIN00030', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00030', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Fisiócratas', 'EIN00031', 1, CURDATE()),
(null, 'Sofistas', 'EIN00031', 0, CURDATE()),
(null, 'Maltusianos', 'EIN00031', 0, CURDATE()),
(null, 'Darwinistas', 'EIN00031', 0, CURDATE()),

(null, 'Equilibro de mercado', 'EIN00032', 0, CURDATE()),
(null, 'Competencia perfecta', 'EIN00032', 0, CURDATE()),
(null, 'Mano invisible', 'EIN00032', 1, CURDATE()),
(null, 'Punto de equilibrio', 'EIN00032', 0, CURDATE()),

(null, 'Instinto de conservación', 'EIN00033', 0, CURDATE()),
(null, 'Instinto de acumulación', 'EIN00033', 0, CURDATE()),
(null, 'Instinto de explotación del hombre por el hombre', 'EIN00033', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00033', 1, CURDATE()),

(null, 'Los recursos están naturalmente distribuidos de forma desigual entre los países', 'EIN00034', 1, CURDATE()),
(null, 'Las necesidades son infinitas y los recursos limitados', 'EIN00034', 0, CURDATE()),
(null, 'Los recursos están distribuidos homogéneamente entre los países', 'EIN00034', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00034', 0, CURDATE()),

(null, 'Produce el 100% de mercancías que necesita', 'EIN00035', 1, CURDATE()),
(null, 'Produce la mayoría de mercancías que necesita', 'EIN00035', 0, CURDATE()),
(null, 'Produce la minoría de mercancías que necesita', 'EIN00035', 0, CURDATE()),
(null, 'Depende completamente de la producción extranjera', 'EIN00035', 0, CURDATE()),

(null, 'Estados Unidos', 'EIN00036', 0, CURDATE()),
(null, 'Alemania', 'EIN00036', 0, CURDATE()),
(null, 'Suiza', 'EIN00036', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00036', 1, CURDATE()),

(null, 'Etiopía', 'EIN00037', 0, CURDATE()),
(null, 'Somalia', 'EIN00037', 0, CURDATE()),
(null, 'Haití', 'EIN00037', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00037', 1, CURDATE()),

(null, 'La riqueza de un país es directamente proporcional a la pobreza de otro', 'EIN00038', 0, CURDATE()),
(null, 'La riqueza de un país es inversamente proporcional a la pobreza de otro', 'EIN00038', 1, CURDATE()),
(null, 'La riqueza de un país es directamente proporcional a la riqueza de otro', 'EIN00038', 0, CURDATE()),
(null, 'La riqueza de un país es inversamente proporcional a la riqueza de otro', 'EIN00038', 0, CURDATE()),

(null, 'El incremento de la riqueza de un país implica el incremento de su potencial económico', 'EIN00039', 1, CURDATE()),
(null, 'El incremento de la riqueza de un país implica el detrimento de su potencial económico', 'EIN00039', 0, CURDATE()),
(null, 'El detrimento de la riqueza de un país implica el incremento de su potencial económico', 'EIN00039', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00039', 0, CURDATE()),

(null, 'España', 'EIN00040', 0, CURDATE()),
(null, 'Francia', 'EIN00040', 0, CURDATE()),
(null, 'Holanda', 'EIN00040', 0, CURDATE()),
(null, 'Inglaterra', 'EIN00040', 1, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Deflación', 'EIN00041', 0, CURDATE()),
(null, 'Inflación', 'EIN00041', 1, CURDATE()),
(null, 'Riqueza', 'EIN00041', 0, CURDATE()),
(null, 'Devaluación', 'EIN00041', 0, CURDATE()),

(null, 'Ventaja comparativa', 'EIN00042', 0, CURDATE()),
(null, 'Ventaja de la baratura', 'EIN00042', 1, CURDATE()),
(null, 'Ventaja absoluta', 'EIN00042', 0, CURDATE()),
(null, 'Ventaja de producción', 'EIN00042', 0, CURDATE()),

(null, 'Bajar impuestos', 'EIN00043', 0, CURDATE()),
(null, 'Incrementar el suministro de circulante', 'EIN00043', 1, CURDATE()),
(null, 'Reducir las tasas de interés a inversionistas', 'EIN00043', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00043', 0, CURDATE()),

(null, 'Adam Smith y David Ricardo', 'EIN00044', 1, CURDATE()),
(null, 'Adam Smith y Milton Friedman', 'EIN00044', 0, CURDATE()),
(null, 'David Ricardo y Ana Swartz', 'EIN00044', 0, CURDATE()),
(null, 'Thomas Malthüs y Harry Dexter White', 'EIN00044', 0, CURDATE()),

(null, 'Teoría de la ventaja comparativa', 'EIN00045', 0, CURDATE()),
(null, 'Teoría de la ventaja absoluta', 'EIN00045', 1, CURDATE()),
(null, 'Teoría de la ventaja de la baratura', 'EIN00045', 0, CURDATE()),
(null, 'Teoría de la ventaja específica', 'EIN00045', 0, CURDATE()),

(null, 'Teoría de la ventaja comparativa', 'EIN00046', 1, CURDATE()),
(null, 'Teoría de la ventaja absoluta', 'EIN00046', 0, CURDATE()),
(null, 'Teoría de la ventaja de la baratura', 'EIN00046', 0, CURDATE()),
(null, 'Teoría de la ventaja específica', 'EIN00046', 0, CURDATE()),

(null, 'David Ricardo', 'EIN00047', 0, CURDATE()),
(null, 'Adam Smith', 'EIN00047', 0, CURDATE()),
(null, 'John Mill', 'EIN00047', 1, CURDATE()),
(null, 'Tomas Malthüs', 'EIN00047', 0, CURDATE()),

(null, 'Escuela Clásica', 'EIN00048', 0, CURDATE()),
(null, 'Escuela Neoclásica', 'EIN00048', 0, CURDATE()),
(null, 'Teoría del Equilibrio del Comercio Internacional', 'EIN00048', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00048', 0, CURDATE()),

(null, 'Modelo de ventajas comparativas', 'EIN00049', 0, CURDATE()),
(null, 'Modelo Maltusiano', 'EIN00049', 0, CURDATE()),
(null, 'Modelo de Heckscher-Ohlin', 'EIN00049', 1, CURDATE()),
(null, 'Teoría del Equilibrio del Comercio Internacional', 'EIN00049', 0, CURDATE()),

(null, 'Política comercial', 'EIN00050', 1, CURDATE()),
(null, 'Intervencionismo estatal', 'EIN00050', 0, CURDATE()),
(null, 'Economía planificada', 'EIN00050', 0, CURDATE()),
(null, 'Comercio planificado', 'EIN00050', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Ministerio de Hacienda', 'EIN00051', 0, CURDATE()),
(null, 'Banco Central de Reserva', 'EIN00051', 0, CURDATE()),
(null, 'Ministerio de Economía', 'EIN00051', 1, CURDATE()),
(null, 'Comisión tripartita entre todas las anteriores', 'EIN00051', 0, CURDATE()),

(null, 'Aranceles específicos', 'EIN00052', 0, CURDATE()),
(null, 'Aranceles ad valorem', 'EIN00052', 1, CURDATE()),
(null, 'Aranceles porcentuales', 'EIN00052', 0, CURDATE()),
(null, 'Aranceles sobre precio', 'EIN00052', 0, CURDATE()),

(null, 'Aranceles específicos', 'EIN00053', 1, CURDATE()),
(null, 'Aranceles ad valorem', 'EIN00053', 0, CURDATE()),
(null, 'Aranceles puntuales', 'EIN00053', 0, CURDATE()),
(null, 'Aranceles constantes', 'EIN00053', 0, CURDATE()),

(null, 'Subsidios a la importación', 'EIN00054', 0, CURDATE()),
(null, 'Subsidios a la exportación', 'EIN00054', 0, CURDATE()),
(null, 'Subsidios a la producción', 'EIN00054', 1, CURDATE()),
(null, 'Subsidios al consumo', 'EIN00054', 0, CURDATE()),

(null, 'Cuotas a la importación', 'EIN00055', 1, CURDATE()),
(null, 'Restricciones voluntarias a la exportación', 'EIN00055', 0, CURDATE()),
(null, 'Restricciones a la importación', 'EIN00055', 0, CURDATE()),
(null, 'Obstáculos técnicos al comercio', 'EIN00055', 0, CURDATE()),

(null, 'Cuotas a la importación', 'EIN00056', 0, CURDATE()),
(null, 'Restricciones voluntarias a la exportación', 'EIN00056', 1, CURDATE()),
(null, 'Restricciones a la importación', 'EIN00056', 0, CURDATE()),
(null, 'Obstáculos técnicos al comercio', 'EIN00056', 0, CURDATE()),

(null, 'Que una determinada cantidad de la materia prima debe ser nacional', 'EIN00057', 0, CURDATE()),
(null, 'Que una determinada cantidad de mano de obra debe ser nacional', 'EIN00057', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00057', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00057', 0, CURDATE()),

(null, 'Requisitos de desempeño', 'EIN00058', 1, CURDATE()),
(null, 'Calidad mínima requerida', 'EIN00058', 0, CURDATE()),
(null, 'Control de calidad', 'EIN00058', 0, CURDATE()),
(null, 'Medidas sanitarias y fitosanitarias', 'EIN00058', 0, CURDATE()),

(null, 'Medidas fitosanitarias', 'EIN00059', 0, CURDATE()),
(null, 'Calidad mínima requerida', 'EIN00059', 0, CURDATE()),
(null, 'Control de calidad', 'EIN00059', 1, CURDATE()),
(null, 'Medidas sanitarias', 'EIN00059', 0, CURDATE()),

(null, 'Proteger al productor nacional de los precios bajos de los extranjeros', 'EIN00060', 1, CURDATE()),
(null, 'Proteger al productor nacional de los precios altos de las materias primas', 'EIN00060', 0, CURDATE()),
(null, 'Fomentar la competencia leal y saludable', 'EIN00060', 0, CURDATE()),
(null, 'Fomentar la producción nacional para la exportación', 'EIN00060', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Obstáculos técnicos al comercio', 'EIN00061', 1, CURDATE()),
(null, 'Burocratización de procesos aduanales', 'EIN00061', 0, CURDATE()),
(null, 'Medidas antidumping', 'EIN00061', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00061', 0, CURDATE()),

(null, 'Constitución de la República', 'EIN00062', 0, CURDATE()),
(null, 'DR-CAFTA', 'EIN00062', 1, CURDATE()),
(null, 'Ley de libre competencia', 'EIN00062', 0, CURDATE()),
(null, 'Ley de aduanas', 'EIN00062', 0, CURDATE()),

(null, 'Mercado de divisas', 'EIN00063', 0, CURDATE()),
(null, 'Forex', 'EIN00063', 0, CURDATE()),
(null, 'Fx', 'EIN00063', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00063', 1, CURDATE()),

(null, 'Mercado de divisas y mercado bursátil', 'EIN00064', 0, CURDATE()),
(null, 'Mercado de bonos y Letes', 'EIN00064', 0, CURDATE()),
(null, 'Mercado cambiario y mercado de valores', 'EIN00064', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00064', 1, CURDATE()),

(null, 'Divisas', 'EIN00065', 1, CURDATE()),
(null, 'Tipos de cambio', 'EIN00065', 0, CURDATE()),
(null, 'Moneda', 'EIN00065', 0, CURDATE()),
(null, 'Masa monetaria', 'EIN00065', 0, CURDATE()),

(null, 'Tiene sedes en absolutamente todos los países del mundo', 'EIN00066', 0, CURDATE()),
(null, 'Puede darse en cualquier sitio siempre que haya intercambio de divisas', 'EIN00066', 1, CURDATE()),
(null, 'Dado que hay dinero en todas partes, hay intercambio en todas partes', 'EIN00066', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00066', 0, CURDATE()),

(null, 'Mueve cantidades enormes de divisa diariamente', 'EIN00067', 1, CURDATE()),
(null, 'Tiene disponibilidad bancaria permanente', 'EIN00067', 0, CURDATE()),
(null, 'Dispone de todo el circulante de cada Estado', 'EIN00067', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00067', 0, CURDATE()),

(null, 'Organización Mundial del Comercio', 'EIN00068', 0, CURDATE()),
(null, 'Wall Street', 'EIN00068', 0, CURDATE()),
(null, 'El Estado de cada país', 'EIN00068', 0, CURDATE()),
(null, 'Personas naturales o jurídicas', 'EIN00068', 1, CURDATE()),

(null, 'Wall Street', 'EIN00069', 0, CURDATE()),
(null, 'New York Stock Exchanges', 'EIN00069', 0, CURDATE()),
(null, 'London Stock Exchanges', 'EIN00069', 1, CURDATE()),
(null, 'Dow Jones', 'EIN00069', 0, CURDATE()),

(null, 'Dólar, Euro y Yuan', 'EIN00070', 0, CURDATE()),
(null, 'Dólar, Euro y Libra esterlina', 'EIN00070', 0, CURDATE()),
(null, 'Dólar, Euro y Yen', 'EIN00070', 1, CURDATE()),
(null, 'Dólar, Euro y Franco suizo', 'EIN00070', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Oferta de divisa en el mercado', 'EIN00071', 0, CURDATE()),
(null, 'Demanda de divisa en el mercado', 'EIN00071', 0, CURDATE()),
(null, 'Especulación', 'EIN00071', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00071', 1, CURDATE()),

(null, 'Especulación', 'EIN00072', 0, CURDATE()),
(null, 'Teoría subjetiva del valor', 'EIN00072', 0, CURDATE()),
(null, 'Política monetaria', 'EIN00072', 1, CURDATE()),
(null, 'Oferta y demanda', 'EIN00072', 0, CURDATE()),

(null, 'Política monetaria', 'EIN00073', 1, CURDATE()),
(null, 'Política fiscal', 'EIN00073', 0, CURDATE()),
(null, 'Política cambiaria', 'EIN00073', 0, CURDATE()),
(null, 'Política bancaria', 'EIN00073', 0, CURDATE()),

(null, 'Abstencionismo estatal', 'EIN00074', 0, CURDATE()),
(null, 'Acción de política monetaria', 'EIN00074', 1, CURDATE()),
(null, 'Expectación estatal', 'EIN00074', 0, CURDATE()),
(null, 'Aplicación del neoliberalismo', 'EIN00074', 0, CURDATE()),

(null, 'Precio de la divisa', 'EIN00075', 0, CURDATE()),
(null, 'Tipo de cambio', 'EIN00075', 1, CURDATE()),
(null, 'Sistema cambiario', 'EIN00075', 0, CURDATE()),
(null, 'Precio de cambio', 'EIN00075', 0, CURDATE()),

(null, 'Banco Central de Reserva', 'EIN00076', 0, CURDATE()),
(null, 'Ministerio de Economía', 'EIN00076', 0, CURDATE()),
(null, 'Ministerio de Hacienda', 'EIN00076', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00076', 0, CURDATE()),

(null, 'Derogación de artículos de la Ley del BCR', 'EIN00077', 1, CURDATE()),
(null, 'Ley de integración monetaria', 'EIN00077', 0, CURDATE()),
(null, 'Política monetaria', 'EIN00077', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00077', 0, CURDATE()),

(null, 'Política cambiaria', 'EIN00078', 0, CURDATE()),
(null, 'Política monetaria', 'EIN00078', 0, CURDATE()),
(null, 'Sistema cambiario', 'EIN00078', 1, CURDATE()),
(null, 'Régimen cambiario', 'EIN00078', 0, CURDATE()),

(null, 'Política cambiaria', 'EIN00079', 0, CURDATE()),
(null, 'Política monetaria', 'EIN00079', 0, CURDATE()),
(null, 'Sistema cambiario', 'EIN00079', 0, CURDATE()),
(null, 'Régimen cambiario', 'EIN00079', 1, CURDATE()),

(null, 'Estables y fluctuantes', 'EIN00080', 0, CURDATE()),
(null, 'Fijos y volantes', 'EIN00080', 0, CURDATE()),
(null, 'Estatales y públicos', 'EIN00080', 0, CURDATE()),
(null, 'Fijos y flotantes', 'EIN00080', 1, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Fijo por bandas horizontales', 'EIN00081', 0, CURDATE()),
(null, 'Fijo por caja de conversión', 'EIN00081', 0, CURDATE()),
(null, 'Fijo sin moneda nacional', 'EIN00081', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00081', 1, CURDATE()),

(null, 'Fijo por bandas horizontales', 'EIN00082', 0, CURDATE()),
(null, 'Fijo por caja de conversión', 'EIN00082', 1, CURDATE()),
(null, 'Fijo sin moneda nacional', 'EIN00082', 0, CURDATE()),
(null, 'Fijo clásico', 'EIN00082', 0, CURDATE()),

(null, 'Fijo por bandas horizontales', 'EIN00083', 0, CURDATE()),
(null, 'Fijo por caja de conversión', 'EIN00083', 0, CURDATE()),
(null, 'Fijo sin moneda nacional', 'EIN00083', 1, CURDATE()),
(null, 'Fijo clásico', 'EIN00083', 0, CURDATE()),

(null, 'Corralito fiscal', 'EIN00084', 1, CURDATE()),
(null, 'Política monetaria', 'EIN00084', 0, CURDATE()),
(null, 'Intervencionismo estatal', 'EIN00084', 0, CURDATE()),
(null, 'Regulación estatal del circulante', 'EIN00084', 0, CURDATE()),

(null, 'Flotación dirigida', 'EIN00085', 0, CURDATE()),
(null, 'Flotación por bandas horizontales', 'EIN00085', 1, CURDATE()),
(null, 'Flotación independiente', 'EIN00085', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00085', 0, CURDATE()),

(null, 'Flotación dirigida', 'EIN00086', 0, CURDATE()),
(null, 'Flotación por bandas horizontales', 'EIN00086', 0, CURDATE()),
(null, 'Flotación independiente', 'EIN00086', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00086', 0, CURDATE()),

(null, 'Flotación dirigida', 'EIN00087', 1, CURDATE()),
(null, 'Flotación por bandas horizontales', 'EIN00087', 0, CURDATE()),
(null, 'Flotación independiente', 'EIN00087', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00087', 0, CURDATE()),

(null, 'Mercado internacional', 'EIN00088', 0, CURDATE()),
(null, 'Mercado financiero', 'EIN00088', 1, CURDATE()),
(null, 'Mercado de valores', 'EIN00088', 0, CURDATE()),
(null, 'Mercado de bonos', 'EIN00088', 0, CURDATE()),

(null, 'Bono', 'EIN00089', 1, CURDATE()),
(null, 'Lete', 'EIN00089', 0, CURDATE()),
(null, 'Quedan', 'EIN00089', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00089', 0, CURDATE()),

(null, 'Bono', 'EIN00090', 0, CURDATE()),
(null, 'Lete', 'EIN00090', 1, CURDATE()),
(null, 'Quedan', 'EIN00090', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00090', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Dólares fiduciarios', 'EIN00091', 0, CURDATE()),
(null, 'Eurodólares', 'EIN00091', 1, CURDATE()),
(null, 'Circulante putativo', 'EIN00091', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00091', 0, CURDATE()),

(null, 'Los intereses que pagan los deudores', 'EIN00092', 0, CURDATE()),
(null, 'Los bienes que embarga a los deudores morosos', 'EIN00092', 0, CURDATE()),
(null, 'Sus inversiones en el mercado bursátil', 'EIN00092', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00092', 0, CURDATE()),

(null, 'Wall Street', 'EIN00093', 0, CURDATE()),
(null, 'Mercado bursátil', 'EIN00093', 1, CURDATE()),
(null, 'Dow Jones', 'EIN00093', 0, CURDATE()),
(null, 'Forex', 'EIN00093', 0, CURDATE()),

(null, 'Organización Mundial del Comercio', 'EIN00094', 0, CURDATE()),
(null, 'Personas naturales o jurídicas', 'EIN00094', 1, CURDATE()),
(null, 'El Estado de cada país', 'EIN00094', 0, CURDATE()),
(null, 'Wall Street', 'EIN00094', 0, CURDATE()),

(null, 'Certificado de propiedad', 'EIN00095', 0, CURDATE()),
(null, 'Título valor', 'EIN00095', 1, CURDATE()),
(null, 'Índice bursátil', 'EIN00095', 0, CURDATE()),
(null, 'Nasdaq', 'EIN00095', 0, CURDATE()),

(null, 'Calificación de riesgo bursátil', 'EIN00096', 0, CURDATE()),
(null, 'Índice bursátil', 'EIN00096', 1, CURDATE()),
(null, 'Indicador bursátil', 'EIN00096', 0, CURDATE()),
(null, 'Fórmula compuesta de valores', 'EIN00096', 0, CURDATE()),

(null, 'Acción', 'EIN00097', 0, CURDATE()),
(null, 'Valor', 'EIN00097', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00097', 1, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00097', 0, CURDATE()),

(null, 'Tokio', 'EIN00098', 1, CURDATE()),
(null, 'Hong Kong', 'EIN00098', 0, CURDATE()),
(null, 'Seúl', 'EIN00098', 0, CURDATE()),
(null, 'Pekín', 'EIN00098', 0, CURDATE()),

(null, 'Oficina Nacional de Riesgo Financiero', 'EIN00099', 0, CURDATE()),
(null, 'Calificadora de riesgo', 'EIN00099', 1, CURDATE()),
(null, 'Superintendencia del Sistema Financiero', 'EIN00099', 0, CURDATE()),
(null, 'Defensoría del Consumidor', 'EIN00099', 0, CURDATE()),

(null, 'Adquieren deudas', 'EIN00100', 0, CURDATE()),
(null, 'Nacen', 'EIN00100', 1, CURDATE()),
(null, 'Dejan de pagar sus deudas', 'EIN00100', 0, CURDATE()),
(null, 'Sus deudas rebasan sus ingresos', 'EIN00100', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Venderla a sus clientes', 'EIN00101', 1, CURDATE()),
(null, 'Resguardarlas en caso de pérdida de datos', 'EIN00101', 0, CURDATE()),
(null, 'Diagnosticar el estado financiero de la población', 'EIN00101', 0, CURDATE()),
(null, 'Determinar el nivel de ingreso y egreso de la población', 'EIN00101', 0, CURDATE()),

(null, 'El monto total que ingresa al país', 'EIN00102', 1, CURDATE()),
(null, 'El monto total que sale del país', 'EIN00102', 0, CURDATE()),
(null, 'La suma de entradas y salidas', 'EIN00102', 0, CURDATE()),
(null, 'Ninguna de las anteriores', 'EIN00102', 0, CURDATE()),

(null, 'Establecer un nuevo orden económico internacional', 'EIN00103', 0, CURDATE()),
(null, 'Llevar a los países a balanza de pagos positivas', 'EIN00103', 1, CURDATE()),
(null, 'Erradicar la pobreza por medio del desarrollo humano', 'EIN00103', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00103', 0, CURDATE()),

(null, 'Organización Mundial del Comercio', 'EIN00104', 0, CURDATE()),
(null, 'Banco Mundial', 'EIN00104', 0, CURDATE()),
(null, 'Fondo Monetario Internacional', 'EIN00104', 1, CURDATE()),
(null, 'Naciones Unidas', 'EIN00104', 0, CURDATE()),

(null, 'Bretton Woods', 'EIN00105', 0, CURDATE()),
(null, 'Yalta', 'EIN00105', 0, CURDATE()),
(null, 'Consenso de Washington', 'EIN00105', 1, CURDATE()),
(null, 'Ronda de Doha', 'EIN00105', 0, CURDATE()),

(null, 'Privatización y devaluación de la moneda', 'EIN00106', 0, CURDATE()),
(null, 'Fomento y protección de la inversión extranjera', 'EIN00106', 0, CURDATE()),
(null, 'Recorte del gasto social', 'EIN00106', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00106', 1, CURDATE()),

(null, 'Ahorro estatal', 'EIN00107', 0, CURDATE()),
(null, 'Ahorro estatal', 'EIN00107', 0, CURDATE()),
(null, 'Reserva internacional', 'EIN00107', 1, CURDATE()),
(null, 'Balance del sector externo', 'EIN00107', 0, CURDATE()),

(null, 'Ajuste de la Balanza de Pagos', 'EIN00108', 0, CURDATE()),
(null, 'Ajuste externo', 'EIN00108', 1, CURDATE()),
(null, 'Programas de ajuste estructural', 'EIN00108', 0, CURDATE()),
(null, 'Programas de equilibrio ', 'EIN00108', 0, CURDATE()),

(null, 'Modelo de absorción', 'EIN00109', 0, CURDATE()),
(null, 'Modelo de equilibrio de cartera', 'EIN00109', 0, CURDATE()),
(null, 'Enfoque de las elasticidades', 'EIN00109', 1, CURDATE()),
(null, 'Enfoque monetario', 'EIN00109', 0, CURDATE()),

(null, 'Modelo de absorción', 'EIN00110', 0, CURDATE()),
(null, 'Modelo de equilibrio de cartera', 'EIN00110', 0, CURDATE()),
(null, 'Enfoque de las elasticidades', 'EIN00110', 0, CURDATE()),
(null, 'Enfoque monetario', 'EIN00110', 1, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Modelo de absorción', 'EIN00111', 1, CURDATE()),
(null, 'Modelo de equilibrio de cartera', 'EIN00111', 0, CURDATE()),
(null, 'Enfoque de las elasticidades', 'EIN00111', 0, CURDATE()),
(null, 'Enfoque monetario', 'EIN00111', 0, CURDATE()),

(null, 'Modelo de absorción', 'EIN00112', 0, CURDATE()),
(null, 'Modelo de equilibrio de cartera', 'EIN00112', 1, CURDATE()),
(null, 'Enfoque de las elasticidades', 'EIN00112', 0, CURDATE()),
(null, 'Enfoque monetario', 'EIN00112', 0, CURDATE()),

(null, 'A	Suma de todas las deudas de un país con entidades extranjeras', 'EIN00113', 1, CURDATE()),
(null, 'Suma de las deudas del Estado con otros países', 'EIN00113', 0, CURDATE()),
(null, 'Suma de las deudas del Estado con organismos financieros internacionales', 'EIN00113', 0, CURDATE()),
(null, 'Suma de las deudas del Estado con entidades extranjeras', 'EIN00113', 0, CURDATE()),

(null, 'Deuda gorila', 'EIN00114', 0, CURDATE()),
(null, 'Deuda banana', 'EIN00114', 0, CURDATE()),
(null, 'Deuda odiosa', 'EIN00114', 1, CURDATE()),
(null, 'Deuda miserable', 'EIN00114', 0, CURDATE()),

(null, 'Un acreedor brinda refinanciamiento al deudor, a cambio de un pago', 'EIN00115', 0, CURDATE()),
(null, 'Un deudor paga la deuda externa con bonos y Letes', 'EIN00115', 0, CURDATE()),
(null, 'Un tercero adquiere la deuda de un deudor', 'EIN00115', 1, CURDATE()),
(null, 'Todas las anteriores', 'EIN00115', 0, CURDATE()),

(null, 'Bancaria y Cambiaria', 'EIN00116', 0, CURDATE()),
(null, 'Cambiaria y Bursátil', 'EIN00116', 0, CURDATE()),
(null, 'Bancaria y Monetaria', 'EIN00116', 1, CURDATE()),
(null, 'Monetaria y Bursátil', 'EIN00116', 0, CURDATE()),

(null, 'Sistema monetario internacional', 'EIN00117', 1, CURDATE()),
(null, 'Sistema cambiario', 'EIN00117', 0, CURDATE()),
(null, 'Régimen cambiario', 'EIN00117', 0, CURDATE()),
(null, 'Forex', 'EIN00117', 0, CURDATE()),

(null, 'Garantizar la liquidez y gestionar la producción monetaria', 'EIN00118', 1, CURDATE()),
(null, 'Garantizar la liquidez y producir moneda', 'EIN00118', 0, CURDATE()),
(null, 'Generar confianza en la moneda y garantizar la liquidez', 'EIN00118', 0, CURDATE()),
(null, 'Todas las anteriores', 'EIN00118', 0, CURDATE()),

(null, 'Lo oneroso que resultaba la producción en función del oro disponible', 'EIN00119', 0, CURDATE()),
(null, 'La ineficiencia de los Estados al producir moneda hecha de oro', 'EIN00119', 0, CURDATE()),
(null, 'Los graves problemas de liquidez generados por las Guerras Mundiales', 'EIN00119', 1, CURDATE()),
(null, 'Todas las anteriores', 'EIN00119', 0, CURDATE()),

(null, 'Moneda - oro - moneda', 'EIN00120', 1, CURDATE()),
(null, 'Moneda - moneda', 'EIN00120', 0, CURDATE()),
(null, 'Moneda - Dólar - oro - Dólar - moneda', 'EIN00120', 0, CURDATE()),
(null, 'Moneda - Dólar - oro', 'EIN00120', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Dax', 'EIN00121', 0, CURDATE()),
(null, 'Bancor', 'EIN00121', 1, CURDATE()),
(null, 'Sun', 'EIN00121', 0, CURDATE()),
(null, 'Bitcoin', 'EIN00121', 0, CURDATE()),

(null, 'Impuesto monetario', 'EIN00122', 0, CURDATE()),
(null, 'Usura cambiaria', 'EIN00122', 0, CURDATE()),
(null, 'Señoreaje', 'EIN00122', 1, CURDATE()),
(null, 'Doctrina Nixon', 'EIN00122', 0, CURDATE()),

(null, 'Moneda - oro - moneda', 'EIN00123', 0, CURDATE()),
(null, 'Moneda - moneda', 'EIN00123', 0, CURDATE()),
(null, 'Moneda - Dólar - oro - Dólar - moneda', 'EIN00123', 1, CURDATE()),
(null, 'Moneda - Dólar - oro', 'EIN00123', 0, CURDATE()),

(null, 'Sirve como respaldo para la emisión de moneda', 'EIN00124', 1, CURDATE()),
(null, 'Sirve como factor de convertibilidad entre monedas', 'EIN00124', 0, CURDATE()),
(null, 'Sirve como sustituto de la moneda en caso de crisis', 'EIN00124', 0, CURDATE()),
(null, 'No tiene función', 'EIN00124', 0, CURDATE()),

(null, 'Moneda - oro - moneda', 'EIN00125', 0, CURDATE()),
(null, 'Moneda - moneda', 'EIN00125', 1, CURDATE()),
(null, 'Moneda - Dólar - oro - Dólar - moneda', 'EIN00125', 0, CURDATE()),
(null, 'Moneda - Dólar - oro', 'EIN00125', 0, CURDATE());

# #TRI
# #Ejemplo de ingreso de preguntas para TEORIA DE LAS RELACIONES INTERNACIONALES  se manda como parametro TRI en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, 'TRI00126', 'En su gran mayoría, los investigadores de la _________evitaron la tentación de generalizar o extraer principios universales a partir de los hechos constatados, y se apegaron al deber de descubrir en su mayor simplicidad el fenómeno histórico.', 'TRI', CURDATE()),#1
(null, getIdPregunta('TRI'), 'El precio que la historia diplomática tuvo que pagar por el intento de realizar un estudio riguroso evitando las generalizaciones explicativas fue el renunciar a elaborar un ____________que en alguna forma corresponde a una teoría de las Relaciones Internacionales.', 'TRI', CURDATE()),#2
(null, getIdPregunta('TRI'), 'Los escritos de estos autores han sido identificados como la proposición de una historia estructural. Esta proposición está enmarcada dentro de una de las más trascendentes corrientes para el estudio de las relaciones internacionales, ya que son producto de varias etapas.', 'TRI', CURDATE()),#3
(null, getIdPregunta('TRI'), 'Obra que destaca el papel de las fuerzas profundas y los factores psicológicos que se reflejan en los hombres de Estado, los cuales son determinantes para el estudio de las Relaciones Internacionales.', 'TRI', CURDATE()),#4
(null, getIdPregunta('TRI'), 'Los organismos internacionales, las empresas públicas internacionales, las empresas intergubernamentales, las empresas privadas y los individuos', 'TRI', CURDATE()),#5
(null, getIdPregunta('TRI'), 'La obra de______ parte de diversas premisas que se van articulando para darle cuerpo a su escrito. Ellas son, principalmente el conocimiento del Estado soberano nacional, teniendo como punto de referencia los asuntos internos y externos de la Gran Bretaña, y cómo en esa relación con el entorno se van interactuando distintas fuerzas para ir confirmando los hechos históricos.', 'TRI', CURDATE()),#6
(null, getIdPregunta('TRI'), 'Autor de la Obra: Law of nations', 'TRI', CURDATE()),#7
(null, getIdPregunta('TRI'), 'En el lapso que va de la Primera Guerra Mundial a la Segunda, se dio un énfasis considerable al estudio del presente inmediato y la tarea del investigador de las relaciones internacionales se vio, en gran medida, limitada a la exposición e interpretación del significado contenido en los hechos políticos señalados por los grandes periódicos y agencias de información internacional.', 'TRI', CURDATE()),#8
(null, getIdPregunta('TRI'), 'Ha sido considerado como el contexto en el que surgió el enfoque jurídico de las Relaciones Internacionales.', 'TRI', CURDATE()),#9
(null, getIdPregunta('TRI'), 'Finalidad de los estudios jurídicos durante el período de entreguerras:', 'TRI', CURDATE()),#10
(null, getIdPregunta('TRI'), 'El creador de la ciencia política moderna, orienta en el sentido de ocuparse particularmente de los asuntos del poder:', 'TRI', CURDATE()),#11
(null, getIdPregunta('TRI'), 'Sugiere la implementación de una Sociología de las Relaciones Internacionales:', 'TRI', CURDATE()),#12
(null, getIdPregunta('TRI'), 'Una vez acabada la Segunda Guerra Mundial, esta teoría se presenta como el “mapa mental” más apropiado para el análisis de la sociedad internacional', 'TRI', CURDATE()),#13
(null, getIdPregunta('TRI'), 'Es la preocupación central en el estudio de la realidad internacional, de acuerdo al realismo:', 'TRI', CURDATE()),#14
(null, getIdPregunta('TRI'), 'Sostiene que la imagen del mundo que sustenta el paradigma realista ha sido definida gráficamente como la imagen de “bolas de billar”', 'TRI', CURDATE()),#15
(null, getIdPregunta('TRI'), 'Se ocupaba principalmente de la lógica de la ciencia, considerando la filosofía como una disciplina encargada de distinguir entre lo que es ciencia y lo que no', 'TRI', CURDATE()),#16
(null, getIdPregunta('TRI'), 'Autor de la obra System and process in international politics:', 'TRI', CURDATE()),#17
(null, getIdPregunta('TRI'), 'Teorías enmarcadas en el Enfoque Conductista', 'TRI', CURDATE()),#18
(null, getIdPregunta('TRI'), 'Uno de los principales precursores de la teoría de los juegos, fue quien en el año de 1928 expuso e l teorema mini-max.', 'TRI', CURDATE()),#19
(null, getIdPregunta('TRI'), 'Se sustentan en la idea de que los distintos fenómenos tienen similitudes considerables por lo que se pueden encontrar leyes que tengan una estructura análoga en los diferentes campos', 'TRI', CURDATE()),#20
(null, getIdPregunta('TRI'), 'Puede ser también llamado paradigma de la interdependencia, dando lugar a un nuevo debate en nuestro campo de estudio entre el realismo y globalismo', 'TRI', CURDATE()),#21
(null, getIdPregunta('TRI'), 'Radicó en Viena, su ciudad natal, donde se graduó como biólogo, y fue profesor en la universidad hasta 1949.', 'TRI', CURDATE()),#22
(null, getIdPregunta('TRI'), 'La presión ejercida por alguien o por algo para conservar del orden interno del sistema.', 'TRI', CURDATE()),#23
(null, getIdPregunta('TRI'), 'De esta teoría, se desprendieron algunos modelos cuya pretensión es explicar cuáles son las formas en que un individuo con una racionalidad normal, actuaría ante la incertidumbre y ante estímulos provenientes de otros individuos', 'TRI', CURDATE()),#24
(null, getIdPregunta('TRI'), 'Autor de la obra “Paz y guerra entre las Naciones”', 'TRI', CURDATE()),#25
(null, getIdPregunta('TRI'), 'Sugería que ante la creciente complejidad de los sistemas gubernamentales, el Estado moderno se veía en una incapacidad de satisfacer las necesidades básicas –en seguridad y bienestar- de su población', 'TRI', CURDATE()),#26
(null, getIdPregunta('TRI'), 'Su formación, realizada tanto en Europa como en los Estados Unidos, le sitúa en condiciones inmejorables para tratar de tender un puente entre los planteamientos muchas veces divergentes de ambos lados del Atlántico.', 'TRI', CURDATE()),#27
(null, getIdPregunta('TRI'), 'La habilidad de los Estados de identificar sus intereses y objetivos, reconocer los desafíos y las amenazas a sus intereses y objetivos, es un supuesto de esta teoría:', 'TRI', CURDATE()),#28
(null, getIdPregunta('TRI'), 'Se refiere a que todo proceso concreto de integración posee una lógica expansiva que contribuye a extrapolar esas experiencias, sus beneficios y sus métodos, hacia otros sectores.', 'TRI', CURDATE()),#29
(null, getIdPregunta('TRI'), 'La existencia de una interdependencia que mitiga sustancialmente la visión independiente o soberana del Estado que sustentan los realistas clásicos, es una visión neorrealista conocida como:', 'TRI', CURDATE()),#30
(null, getIdPregunta('TRI'), 'La creación paulatina de una red de organizaciones internacionales que irían asumiendo la gestión de sectores concretos, es un supuesto de la teoría:', 'TRI', CURDATE()),#31
(null, getIdPregunta('TRI'), 'La capacidad de los actores para desarrollar pautas de cooperación y establecer una adecuada división del trabajo. Es un supuesto de la teoría:', 'TRI', CURDATE()),#32
(null, getIdPregunta('TRI'), 'Las sociedades industrializadas avanzadas y las menos desarrolladas, existen ganadores y perdedores en el sistema del mundo capitalista. Es un supuesto de la teoría:', 'TRI', CURDATE()),#33
(null, getIdPregunta('TRI'), 'Los estudiosos de la realidad internacional que pretendían encontrar el fundamento de la disciplina de las Relaciones Internacionales, partieron principalmente de dos opciones:', 'TRI', CURDATE()),#34
(null, getIdPregunta('TRI'), 'Se refiere a la era de paz y el internacionalismo que se respiraba luego de la Primera Guerra Mundial', 'TRI', CURDATE()),#35
(null, getIdPregunta('TRI'), 'Este paradigma viene a plantearse los términos de dependencia, es decir, de desigualdad y dominación', 'TRI', CURDATE()),#36
(null, getIdPregunta('TRI'), 'El Poder de las Naciones, es la obra neorrealista de este autor', 'TRI', CURDATE()),#37
(null, getIdPregunta('TRI'), 'La tendencia natural de un sistema a entrar en un proceso de desorden interno.', 'TRI', CURDATE()),#38
(null, getIdPregunta('TRI'), 'El estudio de las relaciones internacionales, desde un punto de vista esencialmente político, fue una preocupación aparecida originariamente entre los especialistas de origen:', 'TRI', CURDATE()),#39
(null, getIdPregunta('TRI'), 'Significa un tipo de relaciones entre Estados en la que predominan algunas reglas de conducta', 'TRI', CURDATE()),#40
(null, getIdPregunta('TRI'), 'Considera el concepto de sistema como el punto de referencia básico para su construcción científica.', 'TRI', CURDATE()),#41
(null, getIdPregunta('TRI'), 'La necesidad de incorporar a la teoría realista, las reflexiones sobre los actores y las relaciones económicas que se desarrollan en el sistema interestatal, es el punto de partida de la obra de este teórico.', 'TRI', CURDATE()),#42
(null, getIdPregunta('TRI'), 'Los sistemas contienen unidades y estructuras, en donde la estructura es el más importante factor en explicar la conducta dentro del sistema. Es un supuesto de la teoría:', 'TRI', CURDATE()),#43
(null, getIdPregunta('TRI'), 'Comporta la existencia de un mundo cooperativo y en caso de conflicto, éste no se traslada al campo político-militar', 'TRI', CURDATE()),#44
(null, getIdPregunta('TRI'), 'La unidad de análisis dentro de la corriente globalista es:', 'TRI', CURDATE()),#45
(null, getIdPregunta('TRI'), 'Se hace referencia aquellas relaciones en donde existen efectos de costos recíprocos en los intercambios, no son necesariamente simétricos; es la definición de:', 'TRI', CURDATE()),#46
(null, getIdPregunta('TRI'), 'Es la imagen del mundo del paradigma estructuralista:', 'TRI', CURDATE()),#47
(null, getIdPregunta('TRI'), 'Atribuye mayor relevancia a las fuerzas del mercado, la empresa privada y las inversiones extranjeras directas en comparación con el estructuralismo, pero alega que el Estado debería gobernar el mercado:', 'TRI', CURDATE()),#48
(null, getIdPregunta('TRI'), 'Reestructuró el sistema político y económico, pero creó nuevas agrupaciones de intereses, particularmente en las compañías de financiamiento de capital y de exportación:', 'TRI', CURDATE()),#49
(null, getIdPregunta('TRI'), 'Teórico e investigador argentino encomendado por la CEPAL que desarrolla una corriente y propuesta de desarrollo para los países del Tercer Mundo, en especial hacia Latinoamérica.', 'TRI', CURDATE()),#50
(null, getIdPregunta('TRI'), '¿Quién fue Corazón Aquino?', 'TRI', CURDATE()),#51
(null, getIdPregunta('TRI'), 'Fue una política pakistaní que dirigió el Partido Popular de Pakistán', 'TRI', CURDATE()),#52
(null, getIdPregunta('TRI'), 'Fue conocida como la “Dama de Hierro”, por su férrea política conservadora frente a la Unión Soviética', 'TRI', CURDATE()),#53
(null, getIdPregunta('TRI'), 'Quinto debate teórico de las Relaciones Internacionales:', 'TRI', CURDATE()),#54
(null, getIdPregunta('TRI'), 'Fue una divisoria de aguas que puso la cuestión de la ecología en la agenda global y abrió el debate acerca de sus parámetros.', 'TRI', CURDATE()),#55
(null, getIdPregunta('TRI'), 'La declaración de Estocolmo desemboca veinte años más tarde en la___________________donde se definen los derechos y responsabilidades de las naciones en la búsqueda del progreso y del bienestar de la humanidad.', 'TRI', CURDATE()),#56
(null, getIdPregunta('TRI'), 'Se considera que esta corriente (también denominada post-positivista) no permite la separación entre sujeto y objeto del estudio de las Relaciones Internacionales:', 'TRI', CURDATE()),#57
(null, getIdPregunta('TRI'), 'Es el planteamiento más antiguo de teorización feminista, se concentró en primer lugar en la emancipación de la mujer con el fin de lograr la igualdad entre los sexos', 'TRI', CURDATE()),#58
(null, getIdPregunta('TRI'), 'Se refiere al movimiento feminista que se desarrolló en Inglaterra y Estados Unidos a lo largo del siglo XIX y principios del siglo XX.', 'TRI', CURDATE()),#59
(null, getIdPregunta('TRI'), 'Hace referencia un período de actividad feminista que comienza a principios de los años 1960 y dura hasta los años 90 del siglo XX.', 'TRI', CURDATE()),#60
(null, getIdPregunta('TRI'), 'Defiende las ciencias exactas, en concreto las matemáticas y dice que posee contenidos innatos, es decir, ya nacemos con conocimientos, solo tenemos que &quot;acordarnos&quot; de ellos.', 'TRI', CURDATE()),#61
(null, getIdPregunta('TRI'), 'Utiliza varias líneas occidentales social, política y filosófica pensando en regir una estructura teórica para reflejar la naturaleza y los propósitos de la teoría y revelando formas obvias y sutiles de injusticia y dominación en la sociedad.', 'TRI', CURDATE()),#62
(null, getIdPregunta('TRI'), 'A la orientación al lema de la igualdad, como lo postulaba el feminismo liberal, le siguió ahora un énfasis vehemente en las diferencias entre el hombre y la mujer. Este postulado es conocido como:', 'TRI', CURDATE()),#63
(null, getIdPregunta('TRI'), 'Teoría tradicional y teoría crítica de 1937, fue la obra del autor:', 'TRI', CURDATE()),#64
(null, getIdPregunta('TRI'), 'Distingue entre fundamentos del conocimiento e intereses cognitivos emancipatorios vinculados al poder que impulsan a liberarse de condicionantes sociales estáticas:', 'TRI', CURDATE()),#65
(null, getIdPregunta('TRI'), 'Rechazan la posibilidad de conocer, y desconfían de todo intento por clasificar, categorizar y encontrar verdades universales, pues sería incompatible con la apertura, la pluralidad y la diversidad.', 'TRI', CURDATE()),#66
(null, getIdPregunta('TRI'), 'Se refiere a la construcción social de la identidad sexual:', 'TRI', CURDATE()),#67
(null, getIdPregunta('TRI'), 'Es un movimiento identificado con diversas ramas del feminismo cuyo activismo e investigación comienza en 1990 y se extiende hasta el presente.', 'TRI', CURDATE()),#68
(null, getIdPregunta('TRI'), 'Se refieren a los objetivos, amenazas, temores, identidades, y otros elementos de la realidad percibida que influencian a los estados y a los actores no estatales dentro del sistema internacional:', 'TRI', CURDATE()),#69
(null, getIdPregunta('TRI'), 'Creen que las normas sociales modelan y hacen variar la política exterior a lo largo del tiempo de modo más efectivo que la seguridad que los realistas citan.', 'TRI', CURDATE()),#70
(null, getIdPregunta('TRI'), 'Él trató de relacionar la teoría de los sistemas con el problema de establecer los niveles de análisis para el estudio de las Relaciones Internacionales.', 'TRI', CURDATE()),#71
(null, getIdPregunta('TRI'), 'Este autor es uno de los primeros, si no el principal, de los que introdujeron la concepción sistémica a la política internacional', 'TRI', CURDATE()),#72
(null, getIdPregunta('TRI'), 'Utiliza materiales históricos para tratar de construir modelos de comportamiento en las Relaciones Internacionales', 'TRI', CURDATE()),#73
(null, getIdPregunta('TRI'), 'Fue un estadista, burócrata, militar, político  alemán, considerado el fundador del Estado alemán moderno. Durante sus últimos años de vida se le apodó el «Canciller de Hierro» por su determinación y mano dura en la gestión de todo lo relacionado con su país.', 'TRI', CURDATE()),#74
(null, getIdPregunta('TRI'), 'Se refiere al proceso de creación de una identidad común a todos los grupos étnicos, lingüísticos, religiosos y regionales con el fin de que se sientan parte de la misma comunidad política.', 'TRI', CURDATE()),#75
(null, getIdPregunta('TRI'), 'Profesor de la Division de Ciencias Sociales, Hong Kong, Universidad de Ciencia y Tecnología, que afirma que hay 3 elementos principales e históricos después de la Segunda Guerra Mundial que favorecieron el inicio de la teoría del desarrollo de la modernización.', 'TRI', CURDATE()),#76
(null, getIdPregunta('TRI'), 'Economista estadounidense y político conocido por su oposición al comunismo creyente en eficacia del capitalismo y la libre empresa. Consejero de Seguridad Nacional del Presidente Lyndon Johnson (1966-1969).', 'TRI', CURDATE()),#77
(null, getIdPregunta('TRI'), 'Autor/es de la Teoría de la Dependencia que fue promovida por la CEPAL', 'TRI', CURDATE()),#78
(null, getIdPregunta('TRI'), 'Se centra y enfatiza aspectos culturales y económicos así como de comunicación a escala mundial.', 'TRI', CURDATE()),#79
(null, getIdPregunta('TRI'), 'Autor de la obra Neorealism and Neoliberalism, The Contemporany Debate (1993)', 'TRI', CURDATE()),#80
(null, getIdPregunta('TRI'), 'Son ejemplos de programas influenciados por las teorías políticas de Rostow.', 'TRI', CURDATE()),#81
(null, getIdPregunta('TRI'), 'Los procesos por los cuáles las naciones anteponen el deseo y la capacidad para conducir políticas exteriores e internas clave de forma independiente entre sí, buscando por el contrario tomar decisiones conjuntas o delegar su proceso de toma de decisiones a nuevos órganos centrales', 'TRI', CURDATE()),#82
(null, getIdPregunta('TRI'), 'Este es el mayor grado de profundidad al que puede aspirar un proceso de integración y se produce cuando la integración avanza mas allá de los mercados, se busca unificar las políticas en el campo monetario, fiscal, social, etc., y más allá incluso, en cuestiones relativas a las políticas exteriores y de defensa.', 'TRI', CURDATE()),#83
(null, getIdPregunta('TRI'), 'Subestiman la importancia de las consideraciones de supervivencia como motivaciones de la conducta de los Estados', 'TRI', CURDATE()),#84
(null, getIdPregunta('TRI'), 'Es un acuerdo entre varios Estados, mediante el cual se comprometen a brindar a sus respectivas producciones un trato preferencial en comparación al que se otorga a terceros países.', 'TRI', CURDATE()),#85
(null, getIdPregunta('TRI'), 'Reconoció que hay condiciones mundiales que operan como fuerzas determinantes especialmente para países pequeños y subdesarrollados, y que el nivel de análisis de estado-nación ya no es la categoría adecuada para estudiar las condiciones de desarrollo, particularmente en regiones del Tercer Mundo.', 'TRI', CURDATE()),#86
(null, getIdPregunta('TRI'), 'Argumenta que el máximo grado de estabilidad internacional se alcanza cuando una potencia hegemónica logra imponerse a todas las demás', 'TRI', CURDATE()),#87
(null, getIdPregunta('TRI'), 'En un contexto anárquico, por la pugna entre las exigencias del incremento del poder político y de la riqueza de los Estados, sólo puede resolverse, minimizando los riesgos de guerra y aumentando las oportunidades de la cooperación económica, si se liberalizan las relaciones económicas en un sistema internacional controlado por una potencia', 'TRI', CURDATE()),#88
(null, getIdPregunta('TRI'), 'El nombre de esta teoría se deriva del hecho de que para el etnógrafo polaco Bronislaw Malinowski, seguidor de las teorías sociológicas del francés Émile Durkheim, las culturas se presentan como todos integrados, funcionales y coherentes', 'TRI', CURDATE()),#89
(null, getIdPregunta('TRI'), 'En los trabajos de este autor sobre las Relaciones Internacionales se sugiere que es la sociología la que apoya, con características particulares a esa área de estudio.', 'TRI', CURDATE()),#90
(null, getIdPregunta('TRI'), 'Estudia el origen, la estructura, los métodos y la validez del conocimiento, y también se conoce como la teoría del conocimiento y está relacionada con la metafísica, la lógica y la filosofía de la ciencia.', 'TRI', CURDATE()),#91
(null, getIdPregunta('TRI'), 'Este término debe aplicarse únicamente a los elementos que se relacionen significativamente entre sí en el sentido de que el nivel de interdependencia sea elevado.', 'TRI', CURDATE()),#92
(null, getIdPregunta('TRI'), 'Esta teoría sostiene que no requiere, ni tampoco condona, la indiferencia a ideales políticos y principios morales, pero sí insiste en establecer una clara distinción entre lo que es deseable y lo que es posible: entre lo que es deseable de modo universal, y lo que es posible bajo las circunstancias concretas', 'TRI', CURDATE()),#93
(null, getIdPregunta('TRI'), 'Al terminar la Primera Guerra Mundial, se inició un vigoroso movimiento de revalorización de esta disciplina tendiente a considerarla como una disciplina de síntesis.', 'TRI', CURDATE()),#94
(null, getIdPregunta('TRI'), 'Hace un esbozo preciso de cómo se consolidó y luego declinó la concepción del realismo político y también cómo evolucionó hacia la disciplina de Relaciones Internacionales.', 'TRI', CURDATE()),#95
(null, getIdPregunta('TRI'), 'Autor de la Obra: Moral Man and Immoral Society: A Study of Ethics and Politics', 'TRI', CURDATE()),#96
(null, getIdPregunta('TRI'), 'Cree posible entender los cambios sociales y políticos a partir de los cambios que se dan en la base material de la sociedad, en los modos de producción.', 'TRI', CURDATE()),#97
(null, getIdPregunta('TRI'), 'Enfatiza la interdependencia de las instituciones sociales, la importancia de variables estructurales en el ámbito cultural, y el proceso de cambio inherente a través del equilibrio homeostático', 'TRI', CURDATE()),#98
(null, getIdPregunta('TRI'), 'Nivel de análisis referido a: partidos políticos, los medios de comunicación, grupos de interés.', 'TRI', CURDATE()),#99
(null, getIdPregunta('TRI'), 'Propone los “niveles de análisis” dentro de la disciplina; a lo cual éste responde con el establecimiento de un esquema de análisis que va desde lo micro a lo macro.', 'TRI', CURDATE());#100

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Historia Universal', 'TRI00126', 0, CURDATE()),
(null, 'Historia Diplomática', 'TRI00126', 1, CURDATE()),
(null, 'Sociología Histórica', 'TRI00126', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00126', 0, CURDATE()),

(null, 'Marco universal conceptual', 'TRI00127', 0, CURDATE()),
(null, 'Marco conceptual explicativo', 'TRI00127', 0, CURDATE()),
(null, 'Marco de análisis conceptual', 'TRI00127', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00127', 0, CURDATE()),

(null, 'Cárdenas-Pantoja', 'TRI00128', 0, CURDATE()),
(null, 'Aron-Morgenthau', 'TRI00128', 0, CURDATE()),
(null, 'Renouvin-Duroselle', 'TRI00128', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00128', 0, CURDATE()),

(null, 'Introducción a la Historia de las Relaciones Intraestatales', 'TRI00129', 0, CURDATE()),
(null, 'Introducción a la Historia de las Relaciones Internacionales', 'TRI00129', 1, CURDATE()),
(null, 'Introducción a la Historia Diplomática', 'TRI00129', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00129', 0, CURDATE()),

(null, 'Sociedad Internacional', 'TRI00130', 0, CURDATE()),
(null, 'Sujetos del Derecho Internacional', 'TRI00130', 1, CURDATE()),
(null, 'Sistema Internacional', 'TRI00130', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00130', 0, CURDATE()),

(null, 'Jean Duroselle', 'TRI00131', 0, CURDATE()),
(null, 'Arnold J.Toynbee', 'TRI00131', 1, CURDATE()),
(null, 'Pierre Renouvin', 'TRI00131', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00131', 0, CURDATE()),

(null, 'Jeremy Bentham', 'TRI00132', 1, CURDATE()),
(null, 'Hugo Grocio', 'TRI00132', 0, CURDATE()),
(null, 'Francisco de Vitoria', 'TRI00132', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00132', 0, CURDATE()),

(null, 'Enfoque Periodístico', 'TRI00133', 1, CURDATE()),
(null, 'Enfoque Jurídico', 'TRI00133', 0, CURDATE()),
(null, 'Enfoque Periódico', 'TRI00133', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00133', 0, CURDATE()),

(null, 'Período de la Paz Armada', 'TRI00134', 0, CURDATE()),
(null, 'Período de la Guerra Fría', 'TRI00134', 0, CURDATE()),
(null, 'Periodo de entreguerras', 'TRI00134', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00134', 0, CURDATE()),

(null, 'Promover la solución normativa y los estudios internacionales', 'TRI00135', 0, CURDATE()),
(null, 'Promover la moral y las organizaciones internacionales', 'TRI00135', 0, CURDATE()),
(null, 'Promover el pacifismo y el internacionalismo', 'TRI00135', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00135', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Hobbes', 'TRI00136', 0, CURDATE()),
(null, 'Morgenthau', 'TRI00136', 0, CURDATE()),
(null, 'Maquiavelo', 'TRI00136', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00136', 0, CURDATE()),

(null, 'Aron', 'TRI00137', 0, CURDATE()),
(null, 'Schwarzenberger', 'TRI00137', 1, CURDATE()),
(null, 'Hoffman', 'TRI00137', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00137', 0, CURDATE()),

(null, 'El Realismo Político', 'TRI00138', 1, CURDATE()),
(null, 'La Sociología de las RRII', 'TRI00138', 0, CURDATE()),
(null, 'La Teoría General de los Sistemas', 'TRI00138', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00138', 0, CURDATE()),

(null, 'Guerra y Paz', 'TRI00139', 1, CURDATE()),
(null, 'Seguridad Nacional', 'TRI00139', 0, CURDATE()),
(null, 'Poder Militar', 'TRI00139', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00139', 0, CURDATE()),

(null, 'Raymond Aron', 'TRI00140', 0, CURDATE()),
(null, 'Stanley Hoffman', 'TRI00140', 0, CURDATE()),
(null, 'Esther Barbé', 'TRI00140', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00140', 0, CURDATE()),

(null, 'L. Bertalanffy', 'TRI00141', 0, CURDATE()),
(null, 'Círculo de Viena', 'TRI00141', 1, CURDATE()),
(null, 'Moritz Schlick', 'TRI00141', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00141', 0, CURDATE()),

(null, 'Morton Kaplan', 'TRI00142', 1, CURDATE()),
(null, 'R. Rosecrance', 'TRI00142', 0, CURDATE()),
(null, 'C.Mac-Clelland', 'TRI00142', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00142', 0, CURDATE()),

(null, 'Teoría de las decisiones', 'TRI00143', 0, CURDATE()),
(null, 'Teoría de la Comunicación', 'TRI00143', 0, CURDATE()),
(null, 'Teoría de los Juegos', 'TRI00143', 0, CURDATE()),
(null, 'Todas las Anteriores', 'TRI00143', 1, CURDATE()),

(null, 'John von Neumann', 'TRI00144', 1, CURDATE()),
(null, 'Talcott Parsons', 'TRI00144', 0, CURDATE()),
(null, 'Emilio Durkheim', 'TRI00144', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00144', 0, CURDATE()),

(null, 'Isomorfismo', 'TRI00145', 1, CURDATE()),
(null, 'Homeostasis', 'TRI00145', 0, CURDATE()),
(null, 'Negentropía', 'TRI00145', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00145', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Neorrealismo', 'TRI00146', 0, CURDATE()),
(null, 'Sociedad Global', 'TRI00146', 1, CURDATE()),
(null, 'Sociedad Internacional', 'TRI00146', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00146', 0, CURDATE()),

(null, 'Lass Bertalanffy', 'TRI00147', 0, CURDATE()),
(null, 'Leo Bertalanffy', 'TRI00147', 0, CURDATE()),
(null, 'Ludwing Bertalanffy', 'TRI00147', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00147', 0, CURDATE()),

(null, 'Negentropía', 'TRI00148', 1, CURDATE()),
(null, 'Entropía', 'TRI00148', 0, CURDATE()),
(null, 'Homeostasis', 'TRI00148', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00148', 0, CURDATE()),

(null, 'Psicológica', 'TRI00149', 0, CURDATE()),
(null, 'Behaviorista', 'TRI00149', 1, CURDATE()),
(null, 'Comportamiento', 'TRI00149', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00149', 0, CURDATE()),

(null, 'H. Morgenthau', 'TRI00150', 1, CURDATE()),
(null, 'S. Hoffman', 'TRI00150', 0, CURDATE()),
(null, 'Raymond Aron', 'TRI00150', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00150', 0, CURDATE()),

(null, 'D. Mitrany', 'TRI00151', 1, CURDATE()),
(null, 'R. Keohane', 'TRI00151', 0, CURDATE()),
(null, 'J. Nye', 'TRI00151', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00151', 0, CURDATE()),

(null, 'L. Bertalanffy', 'TRI00152', 0, CURDATE()),
(null, 'R. Aron', 'TRI00152', 0, CURDATE()),
(null, 'S. Hoffman', 'TRI00152', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00152', 0, CURDATE()),

(null, 'Sociología Histórica', 'TRI00153', 0, CURDATE()),
(null, 'Realista', 'TRI00153', 1, CURDATE()),
(null, 'Sistémica', 'TRI00153', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00153', 0, CURDATE()),

(null, 'Concepto de Dependencia', 'TRI00154', 0, CURDATE()),
(null, 'Concepto de Interdependencia', 'TRI00154', 0, CURDATE()),
(null, 'Concepto de Derrame', 'TRI00154', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00154', 0, CURDATE()),

(null, 'Dependencia Recíproca', 'TRI00155', 0, CURDATE()),
(null, 'Dependencia Interestatal', 'TRI00155', 0, CURDATE()),
(null, 'Dependencia Mutua', 'TRI00155', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00155', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Teoría Integracionista', 'TRI00156', 0, CURDATE()),
(null, 'Teoría Funcionalista', 'TRI00156', 1, CURDATE()),
(null, 'Teoría Globalista', 'TRI00156', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00156', 0, CURDATE()),

(null, 'Teoría Neoliberal', 'TRI00157', 0, CURDATE()),
(null, 'Teoría Neorrealista', 'TRI00157', 0, CURDATE()),
(null, 'Teoría Funcionalista', 'TRI00157', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00157', 0, CURDATE()),

(null, 'Materialismo Histórico-Dialéctico', 'TRI00158', 0, CURDATE()),
(null, 'La Dependencia', 'TRI00158', 1, CURDATE()),
(null, 'Realismo Estructural', 'TRI00158', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00158', 0, CURDATE()),

(null, 'Historia y Derecho Internacional', 'TRI00159', 0, CURDATE()),
(null, 'Sociología y Ciencia Política', 'TRI00159', 1, CURDATE()),
(null, 'Realismo e Idealismo', 'TRI00159', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00159', 0, CURDATE()),

(null, 'Espíritu de la Sociedad de Naciones', 'TRI00160', 0, CURDATE()),
(null, 'Espíritu de Ýalta', 'TRI00160', 0, CURDATE()),
(null, 'Espíritu de Ginebra', 'TRI00160', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00160', 0, CURDATE()),

(null, 'Dependencia Mutua', 'TRI00161', 0, CURDATE()),
(null, 'Dependencia Compleja', 'TRI00161', 0, CURDATE()),
(null, 'Dependencia', 'TRI00161', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00161', 0, CURDATE()),

(null, 'R. Keohane', 'TRI00162', 0, CURDATE()),
(null, 'Klaus Knorr', 'TRI00162', 1, CURDATE()),
(null, 'D. Mitrany', 'TRI00162', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00162', 0, CURDATE()),

(null, 'Negentropía', 'TRI00163', 0, CURDATE()),
(null, 'Isomorfismo', 'TRI00163', 1, CURDATE()),
(null, 'Entropía', 'TRI00163', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00163', 0, CURDATE()),

(null, 'Europeo', 'TRI00164', 0, CURDATE()),
(null, 'Anglosajón', 'TRI00164', 1, CURDATE()),
(null, 'Asiático', 'TRI00164', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00164', 0, CURDATE()),

(null, 'La política del Poder', 'TRI00165', 1, CURDATE()),
(null, 'La toma de decisiones', 'TRI00165', 0, CURDATE()),
(null, 'Behoviorista-Conductista', 'TRI00165', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00165', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'K. Knorr', 'TRI00166', 0, CURDATE()),
(null, 'K. Waltz', 'TRI00166', 1, CURDATE()),
(null, 'R. Keohane', 'TRI00166', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00166', 0, CURDATE()),

(null, 'Gilpin', 'TRI00167', 1, CURDATE()),
(null, 'Keohane', 'TRI00167', 0, CURDATE()),
(null, 'Waltz', 'TRI00167', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00167', 0, CURDATE()),

(null, 'Sistemas Mundiales', 'TRI00168', 0, CURDATE()),
(null, 'La Dependencia', 'TRI00168', 0, CURDATE()),
(null, 'Neorrealismo', 'TRI00168', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00168', 0, CURDATE()),

(null, 'Neorrealismo', 'TRI00169', 0, CURDATE()),
(null, 'Neoliberalismo', 'TRI00169', 0, CURDATE()),
(null, 'Interdependencia Compleja', 'TRI00169', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00169', 0, CURDATE()),

(null, 'Una nueva agenda de investigación', 'TRI00170', 0, CURDATE()),
(null, 'Pluralidad de actores internacionales', 'TRI00170', 0, CURDATE()),
(null, 'Actividad humana en un mundo altamente desarrollado', 'TRI00170', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00170', 0, CURDATE()),

(null, 'Dependencia', 'TRI00171', 0, CURDATE()),
(null, 'Interdependencia', 'TRI00171', 1, CURDATE()),
(null, 'Interconexión', 'TRI00171', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00171', 0, CURDATE()),

(null, 'Telaraña', 'TRI00172', 0, CURDATE()),
(null, 'Pulpo de varios tentáculos', 'TRI00172', 0, CURDATE()),
(null, 'Pulpo de varias cabezas alimentado por tentáculos', 'TRI00172', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00172', 0, CURDATE()),

(null, 'Teoría Keynesiana', 'TRI00173', 0, CURDATE()),
(null, 'Neoestructuralismo', 'TRI00173', 1, CURDATE()),
(null, 'Teoría Neomarxista', 'TRI00173', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00173', 0, CURDATE()),

(null, 'Neorrealismo', 'TRI00174', 0, CURDATE()),
(null, 'Neoestructuralismo', 'TRI00174', 0, CURDATE()),
(null, 'Modelo Neoliberal', 'TRI00174', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00174', 0, CURDATE()),

(null, 'Raúl Prebisch', 'TRI00175', 1, CURDATE()),
(null, 'Cristóbal Kay', 'TRI00175', 0, CURDATE()),
(null, 'Enrique Cardoso', 'TRI00175', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00175', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Fue una política, diplomática y, como estadista, la cuarta primer ministro de Israel', 'TRI00176', 0, CURDATE()),
(null, 'Fue una política británica que ejerció como Primera Ministra del Reino Unido desde 1979 a 1990.', 'TRI00176', 0, CURDATE()),
(null, 'Fue presidenta de las Filipinas desde 1986 a 1992.', 'TRI00176', 1, CURDATE()),

(null, 'Benazir Bhutto', 'TRI00177', 1, CURDATE()),
(null, 'Golda Meir', 'TRI00177', 0, CURDATE()),
(null, 'Margaret Thatcher', 'TRI00177', 0, CURDATE()),

(null, 'Corazón Aquino', 'TRI00178', 0, CURDATE()),
(null, 'Margaret Thatcher', 'TRI00178', 1, CURDATE()),
(null, 'Golda Meir', 'TRI00178', 0, CURDATE()),

(null, 'Neorrealismo vs Neoliberalismo', 'TRI00179', 0, CURDATE()),
(null, 'Realismo vs Globalismo', 'TRI00179', 0, CURDATE()),
(null, 'Racionalismo vs Reflectivismo', 'TRI00179', 1, CURDATE()),

(null, 'La Cumbre de Río', 'TRI00180', 0, CURDATE()),
(null, 'La Conferencia de Estocolmo', 'TRI00180', 1, CURDATE()),
(null, 'Protocolo de Kyoto', 'TRI00180', 0, CURDATE()),

(null, 'Declaración de Estocolmo', 'TRI00181', 1, CURDATE()),
(null, 'Declaración de Río', 'TRI00181', 0, CURDATE()),
(null, 'Declaración de Montreal', 'TRI00181', 0, CURDATE()),

(null, 'Reflectivismo', 'TRI00182', 1, CURDATE()),
(null, 'Racionalismo', 'TRI00182', 0, CURDATE()),
(null, 'Idealismo', 'TRI00182', 0, CURDATE()),

(null, 'Feminismo Crítico', 'TRI00183', 0, CURDATE()),
(null, 'Feminismo Radical', 'TRI00183', 0, CURDATE()),
(null, 'Feminismo Liberal', 'TRI00183', 1, CURDATE()),

(null, 'Primera ola feminista', 'TRI00184', 1, CURDATE()),
(null, 'Segunda ola feminista', 'TRI00184', 0, CURDATE()),
(null, 'Tercera ola feminista', 'TRI00184', 0, CURDATE()),

(null, 'Primera ola feminista', 'TRI00185', 0, CURDATE()),
(null, 'Segunda ola feminista', 'TRI00185', 1, CURDATE()),
(null, 'Tercera ola feminista', 'TRI00185', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Racionalismo', 'TRI00186', 1, CURDATE()),
(null, 'Reflectivismo', 'TRI00186', 0, CURDATE()),
(null, 'Positivismo', 'TRI00186', 0, CURDATE()),

(null, 'Escuela de Frankfurt', 'TRI00187', 0, CURDATE()),
(null, 'Max Horkheimer', 'TRI00187', 0, CURDATE()),
(null, 'Teoría Crítica', 'TRI00187', 1, CURDATE()),

(null, 'Feminismo Crítico', 'TRI00188', 0, CURDATE()),
(null, 'Feminismo Genérico', 'TRI00188', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00188', 1, CURDATE()),

(null, 'M. Horkheimer', 'TRI00189', 1, CURDATE()),
(null, 'J. Horkheimer', 'TRI00189', 0, CURDATE()),
(null, 'L. Horkheimer', 'TRI00189', 0, CURDATE()),

(null, 'Wallerstein', 'TRI00190', 0, CURDATE()),
(null, 'Habermas', 'TRI00190', 1, CURDATE()),
(null, 'Horkheimer', 'TRI00190', 0, CURDATE()),

(null, 'Postpositivistas', 'TRI00191', 0, CURDATE()),
(null, 'Postmodernistas', 'TRI00191', 1, CURDATE()),
(null, 'Postbehavioristas', 'TRI00191', 0, CURDATE()),

(null, 'Masculino-Femenino', 'TRI00192', 0, CURDATE()),
(null, 'Sexo', 'TRI00192', 0, CURDATE()),
(null, 'Género', 'TRI00192', 1, CURDATE()),

(null, 'Primera ola del feminismo', 'TRI00193', 0, CURDATE()),
(null, 'Tercera ola del feminismo', 'TRI00193', 1, CURDATE()),
(null, 'Segunda ola del feminismo', 'TRI00193', 0, CURDATE()),

(null, 'Constructivistas', 'TRI00194', 1, CURDATE()),
(null, 'Postmodernistas', 'TRI00194', 0, CURDATE()),
(null, 'Reflectivistas', 'TRI00194', 0, CURDATE()),

(null, 'Neoliberales', 'TRI00195', 0, CURDATE()),
(null, 'Idealistas', 'TRI00195', 0, CURDATE()),
(null, 'Constructivistas', 'TRI00195', 1, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Morton Kaplan', 'TRI00196', 0, CURDATE()),
(null, 'David Mitrany', 'TRI00196', 0, CURDATE()),
(null, 'Charles A. Mc- Clelland', 'TRI00196', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00196', 0, CURDATE()),

(null, 'Morton Kaplan', 'TRI00197', 0, CURDATE()),
(null, 'R. Rosecrance', 'TRI00197', 0, CURDATE()),
(null, 'A. Mc. Clelland', 'TRI00197', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00197', 0, CURDATE()),

(null, 'Talcot Parsons', 'TRI00198', 0, CURDATE()),
(null, 'David Easton', 'TRI00198', 0, CURDATE()),
(null, 'R. Rosecrance', 'TRI00198', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00198', 0, CURDATE()),

(null, 'Adolfo Hitler', 'TRI00199', 0, CURDATE()),
(null, 'Leopoldo II', 'TRI00199', 0, CURDATE()),
(null, 'Otto Von Bismarck', 'TRI00199', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00199', 0, CURDATE()),

(null, 'Integración Total', 'TRI00200', 0, CURDATE()),
(null, 'Integración Nacional', 'TRI00200', 1, CURDATE()),
(null, 'Integración Territorial', 'TRI00200', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00200', 0, CURDATE()),

(null, 'Alvin So', 'TRI00201', 1, CURDATE()),
(null, 'Mao Tsetung', 'TRI00201', 0, CURDATE()),
(null, 'F. Fukuyama', 'TRI00201', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00201', 0, CURDATE()),

(null, 'David Ricardo', 'TRI00202', 0, CURDATE()),
(null, 'Milton Friedman', 'TRI00202', 0, CURDATE()),
(null, 'Walt Whitman Rostow', 'TRI00202', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00202', 0, CURDATE()),

(null, 'J. Habermas', 'TRI00203', 0, CURDATE()),
(null, 'Theotonio Dos Santos', 'TRI00203', 1, CURDATE()),
(null, 'Immanuel Wallestein', 'TRI00203', 0, CURDATE()),
(null, 'Todas de las Anteriores', 'TRI00203', 0, CURDATE()),

(null, 'Teoría de la Modernización', 'TRI00204', 0, CURDATE()),
(null, 'Teoría de la Globalización', 'TRI00204', 1, CURDATE()),
(null, 'Teoría de los Sistemas Mundiales', 'TRI00204', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00204', 0, CURDATE()),

(null, 'David Baldwin', 'TRI00205', 1, CURDATE()),
(null, 'K. Waltz', 'TRI00205', 0, CURDATE()),
(null, 'R. Gilpin', 'TRI00205', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00205', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'CEPAL', 'TRI00206', 0, CURDATE()),
(null, 'OEA', 'TRI00206', 0, CURDATE()),
(null, 'Plan Marshall y La Alianza para el Progreso', 'TRI00206', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00206', 0, CURDATE()),

(null, 'Las organizaciones internacionales', 'TRI00207', 0, CURDATE()),
(null, 'Estado Federal', 'TRI00207', 0, CURDATE()),
(null, 'Integración', 'TRI00207', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00207', 0, CURDATE()),

(null, 'Mercado Común', 'TRI00208', 0, CURDATE()),
(null, 'Integración Económica Completa', 'TRI00208', 1, CURDATE()),
(null, 'Integración', 'TRI00208', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00208', 0, CURDATE()),

(null, 'Los neorrealistas', 'TRI00209', 0, CURDATE()),
(null, 'Los Neoliberales', 'TRI00209', 1, CURDATE()),
(null, 'Los Positivistas', 'TRI00209', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00209', 0, CURDATE()),

(null, 'Integración Total', 'TRI00210', 0, CURDATE()),
(null, 'Zona de preferencias arancelarias', 'TRI00210', 1, CURDATE()),
(null, 'Integración Territorial', 'TRI00210', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00210', 0, CURDATE()),

(null, 'Alvin So', 'TRI00211', 0, CURDATE()),
(null, 'Mao Tsetung', 'TRI00211', 0, CURDATE()),
(null, 'I. Wallernstein', 'TRI00211', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00211', 0, CURDATE()),

(null, 'Robert Gilpin', 'TRI00212', 1, CURDATE()),
(null, 'Milton Friedman', 'TRI00212', 0, CURDATE()),
(null, 'Walt Whitman Rostow', 'TRI00212', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00212', 0, CURDATE()),

(null, 'Teoría Realista', 'TRI00213', 0, CURDATE()),
(null, 'Teoría Idealista', 'TRI00213', 0, CURDATE()),
(null, 'Teoría de la Estabilidad Hegemónica', 'TRI00213', 1, CURDATE()),
(null, 'Todas de las Anteriores', 'TRI00213', 0, CURDATE()),

(null, 'Teoría de la Modernización', 'TRI00214', 0, CURDATE()),
(null, 'Funcionalismo', 'TRI00214', 1, CURDATE()),
(null, 'Teoría de los Sistemas Mundiales', 'TRI00214', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00214', 0, CURDATE()),

(null, 'David Baldwin', 'TRI00215', 0, CURDATE()),
(null, 'Raymond Aron', 'TRI00215', 1, CURDATE()),
(null, 'R. Gilpin', 'TRI00215', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00215', 0, CURDATE());

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, 'Empirismo', 'TRI00216', 0, CURDATE()),
(null, 'Positivismo', 'TRI00216', 0, CURDATE()),
(null, 'Epistemología', 'TRI00216', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00216', 0, CURDATE()),

(null, 'Dependencia', 'TRI00217', 0, CURDATE()),
(null, 'Interdependencia mutua', 'TRI00217', 0, CURDATE()),
(null, 'Sistema', 'TRI00217', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00217', 0, CURDATE()),

(null, 'Realismo Político', 'TRI00218', 1, CURDATE()),
(null, 'Idealismo', 'TRI00218', 0, CURDATE()),
(null, 'Sociología Histórica', 'TRI00218', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00218', 0, CURDATE()),

(null, 'Derecho Internacional', 'TRI00219', 0, CURDATE()),
(null, 'Historia Diplomática', 'TRI00219', 0, CURDATE()),
(null, 'Ciencia Política', 'TRI00219', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00219', 0, CURDATE()),

(null, 'Hans Morgenthau', 'TRI00220', 0, CURDATE()),
(null, 'Morton Kaplan', 'TRI00220', 0, CURDATE()),
(null, 'Cárdenas Elorduy', 'TRI00220', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00220', 0, CURDATE()),

(null, 'Hugo Grocio', 'TRI00221', 0, CURDATE()),
(null, 'R. Niebuhr', 'TRI00221', 1, CURDATE()),
(null, 'Jeremy Bentham', 'TRI00221', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00221', 0, CURDATE()),

(null, 'Materialismo Histórico Dialéctico', 'TRI00222', 1, CURDATE()),
(null, 'Teoría Estructuralista', 'TRI00222', 0, CURDATE()),
(null, 'Teoría de la Dependencia', 'TRI00222', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00222', 0, CURDATE()),

(null, 'Sociología Histórica', 'TRI00223', 0, CURDATE()),
(null, 'Teoría General de los Sistemas', 'TRI00223', 0, CURDATE()),
(null, 'Teoría del funcional-estructuralismo', 'TRI00223', 1, CURDATE()),
(null, 'Todas de las Anteriores', 'TRI00223', 0, CURDATE()),

(null, 'Grupos Supranacionales', 'TRI00224', 0, CURDATE()),
(null, 'Individuos', 'TRI00224', 1, CURDATE()),
(null, 'Estado-Nación', 'TRI00224', 0, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00224', 0, CURDATE()),

(null, 'R. Rosecrance', 'TRI00225', 0, CURDATE()),
(null, 'Morton Kaplan', 'TRI00225', 0, CURDATE()),
(null, 'K. Waltz', 'TRI00225', 1, CURDATE()),
(null, 'Ninguna de las Anteriores', 'TRI00225', 0, CURDATE());

# #CIN
# #Ejemplo de ingreso de preguntas para COOPERACION INTERNACIONAL  se manda como parametro CIN en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, 'CIN00226', 'Año en que se creó el Grupo de Ayuda al Desarrollo (actualmente llamado Comité de Ayuda al Desarrollo - CAD)', 'CIN', CURDATE()),#1
(null, getIdPregunta('CIN'), '¿Cuál es el diagnóstico de la teoría del imperialismo?', 'CIN', CURDATE()),#2
(null, getIdPregunta('CIN'), '¿Cuál es el diagnóstico de la teoría de la dependencia?', 'CIN', CURDATE()),#3
(null, getIdPregunta('CIN'), '¿Cuál es el diagnóstico de la teoría del neoliberalismo?', 'CIN', CURDATE()),#4
(null, getIdPregunta('CIN'), '¿Cuál es el diagnóstico de la teoría de la Modernización/Dualismo?', 'CIN', CURDATE()),#5
(null, getIdPregunta('CIN'), 'Es la ayuda que se da de un país del Norte a una del Sur y compone de la cooperación reembolsable –los préstamos concesionales- y la no reembolsable –donaciones-.', 'CIN', CURDATE()),#6
(null, getIdPregunta('CIN'), 'Es la ayuda que se canaliza a través de las Instituciones Financieras internacionales, las Organizaciones Internacionales no Financieras, y los Fondos Multilaterales.', 'CIN', CURDATE()),#7
(null, getIdPregunta('CIN'), 'Se incluye en la ayuda internacional al desarrollo, pero no en la AOD, los recursos privados canalizados hacia países en desarrollo por las Organizaciones No Gubernamentales de desarrollo y otras fundaciones sin ánimos de lucro.', 'CIN', CURDATE()),#8
(null, getIdPregunta('CIN'), 'Es el tipo de ayuda que se otorga en forma de efectivo, y/o bienes y servicios respecto a las cuales el beneficiario no contrae ninguna deuda legal:', 'CIN', CURDATE()),#9
(null, getIdPregunta('CIN'), 'Es el tipo de ayuda que suele estar condicionada a la adquisición de bienes y servicios por parte del donante:', 'CIN', CURDATE()),#10
(null, getIdPregunta('CIN'), '¿Cuál de los siguientes apartados constituye parte de la AOD bilateral reembolsable?', 'CIN', CURDATE()),#11
(null, getIdPregunta('CIN'), '¿Cuál de los siguientes apartados representa una forma de la AOD bilateral reembolsable?', 'CIN', CURDATE()),#12
(null, getIdPregunta('CIN'), 'Periodo en que comprende el Plan Marshall', 'CIN', CURDATE()),#13
(null, getIdPregunta('CIN'), '¿En qué año surge el Informe Brundtland (consideraciones sobre el impacto del crecimiento y el cambio socio-económico sobre el desarrollo físico)?', 'CIN', CURDATE()),#14
(null, getIdPregunta('CIN'), 'Año de la Declaración sobre el Derecho al Desarrollo adoptada por la Asamblea General de las Naciones Unidas:', 'CIN', CURDATE()),#15
(null, getIdPregunta('CIN'), 'Los países socios ejercen una autoridad efectiva sobre sus políticas de desarrollo y estrategias y coordinan acciones de desarrollo:', 'CIN', CURDATE()),#16
(null, getIdPregunta('CIN'), 'Los donantes basan todo su apoyo en las estrategias, instituciones yprocedimientos nacionales de desarrollo de los países socios:', 'CIN', CURDATE()),#17
(null, getIdPregunta('CIN'), 'Las acciones de los donantes son más armonizadas, transparentesy colectivamente eficaces:', 'CIN', CURDATE()),#18
(null, getIdPregunta('CIN'), 'Administrar los recursos y mejorar las tomas de decisiones orientadas a resultados', 'CIN', CURDATE()),#19
(null, getIdPregunta('CIN'), 'Donantes y socios son responsables de los resultados del desarrollo', 'CIN', CURDATE()),#20
(null, getIdPregunta('CIN'), '¿En qué año se firma la Declaración de París sobre la eficacia de la ayudaal desarrollo?', 'CIN', CURDATE()),#21
(null, getIdPregunta('CIN'), 'Los gobiernos donantes utilizan la ayuda para garantizar el acceso de alto nivel a los funcionarios del gobierno receptor,salvaguardar sus intereses de seguridad y política nacional.', 'CIN', CURDATE()),#22
(null, getIdPregunta('CIN'), 'Tiene como objetivo el apoyo / ayuda para el progreso económico y social y la reducción de la pobreza.', 'CIN', CURDATE()),#23
(null, getIdPregunta('CIN'), 'Apoyo a las crisis naturales o provocadas por el hombre a menudo generan un gran número de víctimas, produciendo a veces personas desplazadas en el país o refugiados en el extranjero.', 'CIN', CURDATE()),#24
(null, getIdPregunta('CIN'), 'Los fines de la ayuda comercial incluyen la expansión de las exportaciones de un país y garantizar el acceso a las materias primas necesarias importaciones:', 'CIN', CURDATE()),#25
(null, getIdPregunta('CIN'), 'Satisfacción de «las necesidades de la generación presente sin comprometer la capacidad de las generaciones futuras para satisfacer sus propias necesidades:', 'CIN', CURDATE()),#26
(null, getIdPregunta('CIN'), 'Es un proceso mediante el cual se amplían las oportunidades de los individuos, las más importantes de las cuales son una vida prolongada y saludable, acceso a la educación y el disfrute de un nivel de vida decente:', 'CIN', CURDATE()),#27
(null, getIdPregunta('CIN'), 'Acciones que realizan gobiernos y organizaciones de la sociedad civil de países distintos, tendentes a fomentar un progreso más equilibrado y justo en el mundo:', 'CIN', CURDATE()),#28
(null, getIdPregunta('CIN'), 'Acciones de cooperación internacional al desarrollo que consiste en la transferencia de recursos (de origen público o privado) con algún grado de concesionalidad:', 'CIN', CURDATE()),#29
(null, getIdPregunta('CIN'), 'Ayuda que transfiere recursos de origen público de un país rico a otro pobre y que cumple con cuatro condiciones exigidas por el CAD:', 'CIN', CURDATE()),#30
(null, getIdPregunta('CIN'), 'Red de instituciones públicas y de la sociedad civil, que promueven acciones de cooperación internacional al desarrollo:', 'CIN', CURDATE()),#31
(null, getIdPregunta('CIN'), 'Fue destinada a sentar las bases de un nuevo modelo de Cooperación Internacional y se creó el Banco Mundial (fundado originalmente como el Banco Internacional de Reconstrucción y Fomento) y el Fondo Monetario Internacional:', 'CIN', CURDATE()),#32
(null, getIdPregunta('CIN'), 'Con los mismos objetivos que la AOD (pero sin alcanzar su grado de concesionalidad) forman parte los créditos de gobierno a gobierno en condiciones de mercado –entre ellos créditos oficiales a la exportación- determinadas inversiones de procedencia pública y operaciones de reestructuración de deuda en términos concesionales:', 'CIN', CURDATE()),#33
(null, getIdPregunta('CIN'), 'Universidades, Sindicatos, Fundaciones de partidos políticos pertenecen a la categoría de:', 'CIN', CURDATE()),#34
(null, getIdPregunta('CIN'), 'El Fondo Monetario Internacional (FMI), Grupo Banco Mundial, Fondos Internacionales Bancos Fondos Regionales de Desarrollo son parte de:', 'CIN', CURDATE()),#35
(null, getIdPregunta('CIN'), 'Están integradas  por  las  agencias  y  programas  de  NN.UU  que  promueven  la  cooperación  internacional  en  ámbitos  técnico,  científico,  sanitario, alimentario,  etc.:', 'CIN', CURDATE()),#36
(null, getIdPregunta('CIN'), 'Están  compuestos  por  asociaciones  de  multidonantes (Estados,  OI,  fundaciones  privadas, empresas,  ONG)  que  pretenden  movilizar  recursos  adicionales  para  problemas  específicos. La  mayoría  se  concentra  en  el  sector  salud  (GAVI,  Fondo  Combate  a  la  Malaria,  Tuberculosis  y  SIDA)', 'CIN', CURDATE()),#37
(null, getIdPregunta('CIN'), 'Se acordó la reestructuración de la cooperación en torno a cuatro principios básicos: Apropiación de las prioridades del desarrollo, Enfoque en los resultados, Alianzas incluyentes, Transparencia y responsabilidad compartida:', 'CIN', CURDATE()),#38
(null, getIdPregunta('CIN'), 'Se incorpora al proceso actores de la sociedad civil y en menor medida actores locales, Gobiernos descentralizados con participación oficial, se reconoce la importancia de la cooperación Sur -Sur porque constituye un valioso complemento de la cooperación Norte', 'CIN', CURDATE()),#39
(null, getIdPregunta('CIN'), 'Su objetivo fue aumentar la eficacia de la ayuda al Desarrollo por medio de los principios de Apropiación, Armonización Alineación, Gestión orientada a resultados y Mutua responsabilidad:', 'CIN', CURDATE());#40

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
  (null, '1960', 'CIN00226', 1, CURDATE()),
  (null, '1961', 'CIN00226', 0, CURDATE()),
  (null, '1950', 'CIN00226', 0, CURDATE()),
  (null, '1951', 'CIN00226', 0, CURDATE()),

  (null, 'Explotación para beneficio de la metrópoli.', 'CIN00227', 1, CURDATE()),
  (null, 'Economía y sociedad tradicionales como causa de retraso.', 'CIN00227', 0, CURDATE()),
  (null, 'El centro sub-desarrolla a la periferia.', 'CIN00227', 0, CURDATE()),
  (null, 'Intervención del estado impide el equilibrio.', 'CIN00227', 0, CURDATE()),

  (null, 'Intervención del estado impide el equilibrio', 'CIN00228', 0, CURDATE()),
  (null, 'Economía y sociedad tradicionales como causa de retraso.', 'CIN00228', 0, CURDATE()),
  (null, 'Explotación para beneficio de la metrópoli.', 'CIN00228', 0, CURDATE()),
  (null, 'El centro sub-desarrolla a la periferia.', 'CIN00228', 1, CURDATE()),

  (null, 'El centro sub-desarrolla a la periferia.', 'CIN00229', 0, CURDATE()),
  (null, 'Economía y sociedad tradicionales como causa de retraso.', 'CIN00229', 0, CURDATE()),
  (null, 'Intervención del estado impide el equilibrio', 'CIN00229', 1, CURDATE()),
  (null, 'Explotación para beneficio de la metrópoli.', 'CIN00229', 0, CURDATE()),

  (null, 'Intervención del estado impide el equilibrio', 'CIN00230', 0, CURDATE()),
  (null, 'Economía y sociedad tradicionales como causa de retraso.', 'CIN00230', 1, CURDATE()),
  (null, 'Explotación para beneficio de la metrópoli.', 'CIN00230', 0, CURDATE()),
  (null, 'El centro sub-desarrolla a la periferia.', 'CIN00230', 0, CURDATE()),

  (null, 'Ayuda bilateral.', 'CIN00231', 1, CURDATE()),
  (null, 'AOD multilateral', 'CIN00231', 0, CURDATE()),
  (null, 'Ayuda al desarrollo no oficial', 'CIN00231', 0, CURDATE()),
  (null, 'Financiación oficial al desarrollo', 'CIN00231', 0, CURDATE()),

  (null, 'Financiación al desarrollo', 'CIN00232', 0, CURDATE()),
  (null, 'Ayuda bilateral', 'CIN00232', 0, CURDATE()),
  (null, 'AOD multilateral', 'CIN00232', 1, CURDATE()),
  (null, 'Ayuda al desarrollo no oficial', 'CIN00232', 0, CURDATE()),

  (null, 'Ayuda al desarrollo no oficial', 'CIN00233', 1, CURDATE()),
  (null, 'Financiación al desarrollo', 'CIN00233', 0, CURDATE()),
  (null, 'Ayuda bilateral', 'CIN00233', 0, CURDATE()),
  (null, 'AOD multilateral', 'CIN00233', 0, CURDATE()),

  (null, 'Ayuda reembolsable', 'CIN00234', 0, CURDATE()),
  (null, 'Ayuda no reembolsable', 'CIN00234', 1, CURDATE()),

  (null, 'Ayuda no reembolsable', 'CIN00235', 0, CURDATE()),
  (null, 'Ayuda reembolsable', 'CIN00235', 1, CURDATE());
  
insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
  (null, 'Ayuda de emergencia', 'CIN00236', 0, CURDATE()),
  (null, 'Subvenciones ONGD', 'CIN00236', 0, CURDATE()),
  (null, 'Proyectos de desarrollo económico y social', 'CIN00236', 0, CURDATE()),
  (null, 'Microcréditos', 'CIN00236', 1, CURDATE()),

  (null, 'Cooperación científica o técnica', 'CIN00237', 0, CURDATE()),
  (null, 'Proyectos de desarrollo económico y social', 'CIN00237', 0, CURDATE()),
  (null, 'Préstamos concesionales', 'CIN00237', 1, CURDATE()),
  (null, 'Apoyo a la balanza de pagos, a los presupuestos públicos o reducción de la deuda', 'CIN00237', 0, CURDATE()),

  (null, '1939-1945', 'CIN00238', 0, CURDATE()),
  (null, '1945-1949', 'CIN00238', 0, CURDATE()),
  (null, '1948-1952', 'CIN00238', 1, CURDATE()),
  (null, '1953-1962', 'CIN00238', 0, CURDATE()),

  (null, '1980', 'CIN00239', 0, CURDATE()),
  (null, '1992', 'CIN00239', 0, CURDATE()),
  (null, '1986', 'CIN00239', 0, CURDATE()),
  (null, '1987', 'CIN00239', 1, CURDATE()),

  (null, '1980', 'CIN00240', 0, CURDATE()),
  (null, '1992', 'CIN00240', 0, CURDATE()),
  (null, '1986', 'CIN00240', 1, CURDATE()),
  (null, '1987', 'CIN00240', 0, CURDATE()),

  (null, 'Gestión orientada a resultados', 'CIN00241', 0, CURDATE()),
  (null, 'Mutua Responsabilidad', 'CIN00241', 0, CURDATE()),
  (null, 'Apropiación', 'CIN00241', 1, CURDATE()),
  (null, 'Alineación', 'CIN00241', 0, CURDATE()),
  (null, 'Armonización', 'CIN00241', 0, CURDATE()),

  (null, 'Gestión orientada a resultados', 'CIN00242', 0, CURDATE()),
  (null, 'Mutua Responsabilidad', 'CIN00242', 0, CURDATE()),
  (null, 'Apropiación', 'CIN00242', 0, CURDATE()),
  (null, 'Alineación', 'CIN00242', 1, CURDATE()),
  (null, 'Armonización', 'CIN00242', 0, CURDATE()),

  (null, 'Gestión orientada a resultados', 'CIN00243', 0, CURDATE()),
  (null, 'Mutua Responsabilidad', 'CIN00243', 0, CURDATE()),
  (null, 'Apropiación', 'CIN00243', 0, CURDATE()),
  (null, 'Alineación', 'CIN00243', 0, CURDATE()),
  (null, 'Armonización', 'CIN00243', 1, CURDATE()),

  (null, 'Gestión orientada a resultados', 'CIN00244', 1, CURDATE()),
  (null, 'Mutua Responsabilidad', 'CIN00244', 0, CURDATE()),
  (null, 'Apropiación', 'CIN00244', 0, CURDATE()),
  (null, 'Alineación', 'CIN00244', 0, CURDATE()),
  (null, 'Armonización', 'CIN00244', 0, CURDATE()),

  (null, 'Gestión orientada a resultados', 'CIN00245', 0, CURDATE()),
  (null, 'Mutua Responsabilidad', 'CIN00245', 1, CURDATE()),
  (null, 'Apropiación', 'CIN00245', 0, CURDATE()),
  (null, 'Alineación', 'CIN00245', 0, CURDATE()),
  (null, 'Armonización', 'CIN00245', 0, CURDATE());
  
insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
  (null, '2001', 'CIN00246', 0, CURDATE()),
  (null, '2130', 'CIN00246', 1, CURDATE()),
  (null, '2000', 'CIN00246', 0, CURDATE()),
  (null, '2129', 'CIN00246', 0, CURDATE()),

  (null, 'Propósitos Diplomáticos', 'CIN00247', 1, CURDATE()),
  (null, 'Propósitos de Desarrollo', 'CIN00247', 0, CURDATE()),
  (null, 'Propósitos de Ayuda Humanitaria', 'CIN00247', 0, CURDATE()),
  (null, 'PropósitosComerciales', 'CIN00247', 0, CURDATE()),

  (null, 'Propósitos de Ayuda Humanitaria', 'CIN00248', 0, CURDATE()),
  (null, 'Propósitos Comerciales', 'CIN00248', 0, CURDATE()),
  (null, 'Propósitos Diplomáticos', 'CIN00248', 0, CURDATE()),
  (null, 'Propósitos de Desarrollo', 'CIN00248', 1, CURDATE()),

  (null, 'Propósito Comerciales', 'CIN00249', 0, CURDATE()),
  (null, 'Propósitos de Desarrollo', 'CIN00249', 0, CURDATE()),
  (null, 'Propósito de Ayuda Humanitaria', 'CIN00249', 1, CURDATE()),
  (null, 'Propósitos Diplomáticos', 'CIN00249', 0, CURDATE()),

  (null, 'Propósitos de Ayuda Humanitaria', 'CIN00250', 0, CURDATE()),
  (null, 'Propósitos Comerciales', 'CIN00250', 1, CURDATE()),
  (null, 'Propósitos Diplomáticos', 'CIN00250', 0, CURDATE()),
  (null, 'Propósitos de Desarrollo', 'CIN00250', 0, CURDATE()),

  (null, 'Desarrollo humano', 'CIN00251', 0, CURDATE()),
  (null, 'Desarrollo económico', 'CIN00251', 0, CURDATE()),
  (null, 'Desarrollo sostenible', 'CIN00251', 1, CURDATE()),
  (null, 'Desarrollo humano integral', 'CIN00251', 0, CURDATE()),

  (null, 'Desarrollo económico', 'CIN00252', 0, CURDATE()),
  (null, 'Desarrollo humano', 'CIN00252', 1, CURDATE()),
  (null, 'Desarrollo sostenible', 'CIN00252', 0, CURDATE()),
  (null, 'Desarrollo humano integral', 'CIN00252', 0, CURDATE()),

  (null, 'Financiación al Desarrollo', 'CIN00253', 0, CURDATE()),
  (null, 'Ayuda Oficial al Desarrollo (AOD)', 'CIN00253', 0, CURDATE()),
  (null, 'Cooperación Internacional al Desarrollo', 'CIN00253', 1, CURDATE()),
  (null, 'Sistema Internacional de Cooperación al Desarrollo', 'CIN00253', 0, CURDATE()),

  (null, 'Cooperación Internacional al Desarrollo', 'CIN00254', 0, CURDATE()),
  (null, 'Ayuda al Desarrollo', 'CIN00254', 1, CURDATE()),
  (null, 'Ayuda Oficial al Desarrollo (AOD)', 'CIN00254', 0, CURDATE()),
  (null, 'Sistema Internacional de Cooperación al Desarrollo', 'CIN00254', 0, CURDATE()),

  (null, 'Sistema Internacional de Cooperación al Desarrollo', 'CIN00255', 0, CURDATE()),
  (null, 'Cooperación Internacional al Desarrollo', 'CIN00255', 0, CURDATE()),
  (null, 'Ayuda al Desarrollo', 'CIN00255', 0, CURDATE()),
  (null, 'Ayuda Oficial al Desarrollo (AOD)', 'CIN00255', 1, CURDATE());
  
insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
  (null, 'Ayuda al Desarrollo', 'CIN00256', 0, CURDATE()),
  (null, 'Ayuda Oficial al Desarrollo (AOD)', 'CIN00256', 0, CURDATE()),
  (null, 'Cooperación Internacional al Desarrollo', 'CIN00256', 0, CURDATE()),
  (null, 'Sistema Internacional de Cooperación al Desarrollo', 'CIN00256', 1, CURDATE()),

  (null, 'Conferencia de San Francisco', 'CIN00257', 0, CURDATE()),
  (null, 'Consenso de Washington', 'CIN00257', 0, CURDATE()),
  (null, 'Conferencia de Bretton Woods', 'CIN00257', 1, CURDATE()),
  (null, 'Conferencia de Estocolmo', 'CIN00257', 0, CURDATE()),

  (null, 'Financiación al Desarrollo', 'CIN00258', 1, CURDATE()),
  (null, 'Ayuda Oficial al Desarrollo (AOD)', 'CIN00258', 0, CURDATE()),
  (null, 'Cooperación Internacional al Desarrollo', 'CIN00258', 0, CURDATE()),
  (null, 'Sistema Internacional de Cooperación al Desarrollo', 'CIN00258', 0, CURDATE()),

  (null, 'Agentes multilaterales', 'CIN00259', 0, CURDATE()),
  (null, 'Agentes públicos gubernamentales', 'CIN00259', 0, CURDATE()),
  (null, 'Agentes no gubernamentales', 'CIN00259', 1, CURDATE()),
  (null, 'Agentes privados', 'CIN00259', 0, CURDATE()),

  (null, 'Organismos Multilaterales Financieros', 'CIN00260', 1, CURDATE()),
  (null, 'Organismos Multilaterales No Financieros', 'CIN00260', 0, CURDATE()),
  (null, 'Fondos globales', 'CIN00260', 0, CURDATE()),

  (null, 'Fondos globales', 'CIN00261', 0, CURDATE()),
  (null, 'Organismos Multilaterales Financieros', 'CIN00261', 0, CURDATE()),
  (null, 'Organismos Multilaterales No Financieros', 'CIN00261', 1, CURDATE()),

  (null, 'Organismos Multilaterales Financieros', 'CIN00262', 0, CURDATE()),
  (null, 'Organismos Multilaterales No Financieros', 'CIN00262', 0, CURDATE()),
  (null, 'Fondos globales', 'CIN00262', 1, CURDATE()),

  (null, 'Segundo Foro de Alto Nivel sobre la Eficacia de la Ayuda (París, 2130)', 'CIN00263', 0, CURDATE()),
  (null, '4 o Foro de Alto nivel sobre la Eficacia de la Ayuda, Busán (Corea del Sur, 2011)', 'CIN00263', 1, CURDATE()),
  (null, 'Foro de Alto Nivel de Roma, 2128.', 'CIN00263', 0, CURDATE()),
  (null, '3r. Foro de Alto Nivel sobre Eficacia de la Ayuda Accra (Ghana 2008)', 'CIN00264', 0, CURDATE()),

  (null, 'Segundo Foro de Alto Nivel sobre la Eficacia de la Ayuda (París, 2130)', 'CIN00264', 0, CURDATE()),
  (null, '4 o Foro de Alto nivel sobre la Eficacia de la Ayuda, Busán (Corea del Sur) 2011', 'CIN00264', 0, CURDATE()),
  (null, 'Foro de Alto Nivel de Roma, en 2128.', 'CIN00264', 0, CURDATE()),
  (null, '3r. Foro de Alto Nivel sobre Eficacia de la Ayuda en Accra (Ghana) 2008.', 'CIN00264', 1, CURDATE()),

  (null, 'Segundo Foro de Alto Nivel sobre la Eficacia de la Ayuda (París, 2130)', 'CIN00265', 1, CURDATE()),
  (null, '4 o Foro de Alto nivel sobre la Eficacia de la Ayuda, Busán (Corea del Sur) 2011', 'CIN00265', 0, CURDATE()),
  (null, 'Foro de Alto Nivel de Roma, en 2128.', 'CIN00265', 0, CURDATE()),
  (null, '3r. Foro de Alto Nivel sobre Eficacia de la Ayuda en Accra (Ghana) 2008.', 'CIN00265', 0, CURDATE());
