USE redstore;

################ CATEGORIA

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  1,
  'Accesorios'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  2,
  'Altavoces'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  3,
  'Amplificadores'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  4,
  'Auriculares'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  5,
  'Camaras'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  6,
  'Home'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  7,
  'Objetivos'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  8,
  'PlayStation'
);

INSERT INTO categoria (id_categoria, nombre_categoria)
VALUES (
  9,
  'Reproductores'
);

################ PRODUCTO

---- ACCESORIOS (7)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  1,
  'DLC-HJ20HF',
  'Cable de video HDMI 1.4',
  'Cable HDMI de alta velocidad plano de 2 metros con Ethernet',
  'Transfiere datos de audio multicanal y vídeo digital de alta definición con DLC-HJ20HF. El cable admite resolución 4K y 3D con dispositivos compatibles y se puede utilizar para compartir señales de audio ARC o Ethernet. El cómodo diseño plano reduce la pérdida de transmisión mientras que los enchufes incorporan conectores HDMI bañados en oro para una calidad duradera. Transferencia de datos fiable gracias al cableado de hilos de cobre AWG 30 con aislamiento de triple capa.',
  1,
  15,
  1999,
  'https://i.imgur.com/T26kRgz.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  2,
  'DLC-HX10',
  'Cable de video HDMI 2.1',
  'Cable HDMI de alta calidad y alta velocidad con Ethernet',
  'Este cable HDMI de alta calidad y alta velocidad con certificación Premium HDMI admite la transferencia de datos a alta velocidad de 18 Gbps necesaria para transmitir señales de vídeo 4K y 4K HDR hasta a 60p. Disfruta de una alta resolución, una amplia gama de color y un alto contraste de vídeo, además de funciones de comunicación de datos avanzadas. Transferencia de datos fiable gracias al cableado de hilos de cobre AWG 30 con aislamiento de triple capa.',
  1,
  20,
  1699,
  'https://i.imgur.com/3BoUCxm.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  3,
  'EP-NI1000',
  'Tapones EP-NI1000',
  'Tapones con reducción de ruido EP-NI1000S/EP-NI1000M/EP-NI1000L',
  'La tecnología de amplificación digital S-Master™ HX de Walkman® es compatible con el formato DSD nativo y admite una salida equilibrada y de alta potencia. Reduce la distorsión y el ruido en varias frecuencias para un sonido rico y completo, que mejora aún más por la nueva soldadura sin plomo de alta calidad.',
  1,
  20,
  2499,
  'https://i.imgur.com/iYrnDmq.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  4,
  'MUC-B20SB1',
  'Cable MUC-B20SB1',
  'Cable conector estándar balanceado de 2 metros',
  'Con el fin de garantizar un rendimiento óptimo, el cable de auriculares balanceado MUC-B20SB1 se ha diseñado en estrecha colaboración con Kimber Kable, aprovechando su tecnología de trenzado. El conductor de cobre sin oxígeno minimiza el deterioro del sonido y su longitud de 2m te ofrece una gran libertad de movimiento.',
  1,
  6,
  4999,
  'https://i.imgur.com/3vpmu44.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  5,
  'MUC-S12SB1',
  'Cable MUC-S12SB1',
  'Cable conector estándar balanceado de 1,2 metros',
  'Con el fin de garantizar un rendimiento óptimo, el cable de auriculares balanceado MUC-S12SB1 se ha diseñado en estrecha colaboración con Kimber Kable, aprovechando su tecnología de trenzado. El conductor de cobre sin oxígeno minimiza el deterioro del sonido y su longitud de 1.2m te ofrece una gran libertad de movimiento.',
  1,
  10,
  3999,
  'https://i.imgur.com/eHsffJM.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  6,
  'VMC-15FS',
  'Cable de video AV',
  'Cable de video y surround 5.1 AV',
  'Cable AV de conexión para enlazar la Handycam® a un vídeo o TV. La longitud del cable es de 1,5 metros. Conector especial de 10 patillas: Pin Plug 2 (audio) / 1 (vídeo) / S-Vídeo.',
  1,
  30,
  999,
  'https://i.imgur.com/6OZvOaK.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  7,
  'VMC-EC Series',
  'Cable de euroconector',
  'Cable de euroconector serie VMC-EC',
  'Cable analógico diseñado para conectar un grabador de HDD, un reproductor de DVD, un vídeo, un decodificador o un receptor de satélite a un televisor o a un receptor A/V. Cable de alta pureza: el núcleo de cobre 99,996% libre de oxígeno (OFC) reduce la distorsión de la señal. El aislamiento de doble capa reduce las interferencias electromagnéticas y de radiofrecuencia para una imagen nítida. Los conectores bañados en oro de 24 k resisten la corrosión para una fiabilidad duradera.',
  1,
  10,
  1299,
  'https://i.imgur.com/H720o70.png'
);

---- ALTAVOCES (5)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  8,
  'SRS-XB13',
  'Altavoz SRS-XB13',
  'Altavoz inalámbrico portátil EXTRA BASS™ XB13',
  'Que su forma compacta no te engañe, este pequeño altavoz proporciona un gran sonido Surround. El procesador de difusión de sonido expande el sonido en cualquier lugar gracias a su tecnología DSP. Resistente al agua y al polvo con una calificación IP67, este altavoz es tan bueno por fuera como por dentro. Llévatelo a la piscina, al río o al parque, y podrás escuchar música mientras tus amigos y tú disfrutáis del sol.',
  2,
  5,
  8999,
  'https://i.imgur.com/B4yw1gA.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  9,
  'SRS-RA5000',
  'Altavoz SRS-RA5000',
  'Altavoz inalámbrico premium SRS-RA5000 con 360 Reality Audio',
  'Al incorporar datos de localización tridimensional, las pistas con 360 Reality Audio producen un excepcional sonido ambiental que llena la sala. Y si no hay datos, tampoco hay problema: Immersive Audio Enhancement, el exclusivo algoritmo de Sony, reproduce tus canciones en estéreo favoritas con un sonido que inunda la sala.',
  2,
  4,
  48999,
  'https://i.imgur.com/etTpJfZ.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  10,
  'SRS-NS7',
  'Altavoces SRS-NS7',
  'Altavoces inalámbricos estilo neckband SRS-NS7',
  'El primer altavoz inalámbrico estilo neckband compatible con Dolby Atmos® con los modelos de BRAVIA XR de Sony. Descubre lo envolvente que puede ser el sonido espacial 360 al ver películas Dolby Atmos® en nuestros últimos televisores BRAVIA XR con una gama de funciones de sonido incomparable.',
  2,
  7,
  32999,
  'https://i.imgur.com/Tthqx2J.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  11,
  'SRS-XG500',
  'Altavoz XG500 serie X',
  'Altavoz inalámbrico portátil XG500 de la serie X',
  'El SRS-XG500 es perfecto para llevar un sonido potente al aire libre. La combinación de X-Balanced Speaker Unit, tweeter de alta eficiencia y radiadores pasivos ofrece un sonido nítido y claro tanto si escuchas en interiores como al aire libre. Además, con un exterior duradero, una clasificación de resistencia al agua6 y al polvo2 IP66, una duración de batería de 30 horas y un mango fácil de sujetar, puedes llevarlo casi donde quieras.',
  2,
  12,
  25999,
  'https://i.imgur.com/94Z8oFx.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  12,
  'SRS-XP700',
  'Altavoz XP700 serie X',
  'Altavoz inalámbrico portátil XP700 de la serie X',
  'El XP700 está diseñado para ofrecer un sonido envolvente. Con el sonido de fiesta omnidireccional que ofrece X-Balanced Speaker Unit y los tweeters frontal y posterior de alta eficiencia, emite un sonido detallado y nítido en todas direcciones. Es perfecto para fiestas dentro o fuera de casa, y cuenta con una gran duración de batería, resistencia al agua IPX43 y una práctica asa para ir de una fiesta a la siguiente.',
  2,
  3,
  70999,
  'https://i.imgur.com/9XuaGoD.png'
);

---- AMPLIFICADORES (2)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  13,
  'CAS-1B',
  'Amplificador CAS-1B',
  'Sistema de audio de alta resolución con amplificador para jack 3.5',
  'El sistema de audio CAS-1 cuenta con amplificadores dobles y altavoces independientes que recrean de forma precisa los espacios sonoros originales para una experiencia envolvente de audio de alta resolución a través de los altavoces o auriculares. También podrás disfrutar de una transmisión de audio mediante Bluetooth® de alta calidad desde tus dispositivos.',
  3,
  5,
  88999,
  'https://i.imgur.com/ZjLgO6j.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  14,
  'SA-CS9',
  'Subwoofer SA-CS9',
  'Subwoofer con amplificador integrado con 115W de potencia',
  'Disfruta de unos graves profundos con este potente subwoofer activo. El diafragma de cono de 250 mm puede mover un mayor volumen de aire, produciendo una potente resonancia que hace que los graves suenen auténticos. El subwoofer refuerza los sonidos de baja frecuencia en las películas y la música para lograr una gran experiencia multicanal de cine en casa.',
  3,
  7,
  18999,
  'https://i.imgur.com/4IHX37T.png'
);

---- AURICULARES (7)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  15,
  'WF-SP900',
  'Auriculares WF-SP900',
  'Auriculares inalámbricos WF-SP900 con almacenamiento de 4GB',
  'Gracias a la certificación IPX5/8 de resistencia al agua, los auriculares WF-SP900 pueden utilizarse tanto en agua dulce como salada y sumergirse hasta 2 metros. El modo sonido ambiente te permite mantenerte atento mientras te mueves. Al mezclar música con sonidos del entorno, disfrutarás de tus canciones favoritas y escucharás lo que ocurre a tu alrededor.',
  4,
  10,
  17999,
  'https://i.imgur.com/5Tzx1vr.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  16,
  'WH-1000XM4',
  'Auriculares WH-1000XM4',
  'Auriculares inalámbricos con XM4 noise cancelling y EXTRA BASS™',
  'Para maximizar el rendimiento de noise cancelling, los WH-1000XM4 incorporan dos tecnologías: el optimizador de Noise Cancelling personal, diseñado a tu medida, y la optimización de la presión atmosférica, diseñada expresamente para los viajes.',
  4,
  9,
  42999,
  'https://i.imgur.com/xMsIVOg.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  17,
  'WH-CH710N',
  'Auriculares WH-CH710N',
  'Auriculares inalámbricos con Noise Cancelling WH-CH710N',
  'Los auriculares inalámbricos con Noise Cancelling WH-CH710N te permiten disfrutar de una experiencia de escucha potente y sin distracciones. Gracias a la función Noise Cancelling con tecnología de sensor de ruido dual y al modo sonido ambiente, tendrás un control absoluto sobre tu experiencia de escucha para que puedas disfrutar de hasta 35 horas de reproducción inalámbrica.',
  4,
  11,
  30999,
  'https://i.imgur.com/N6QiXV9.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  18,
  'WH-H910N',
  'Auriculares WH-910N',
  'Auriculares con Noise Cancelling h.ear on 3 Wireless WH-H910N',
  'Gracias a una fina carcasa y una diadema de silicona que se adapta mejor a la cabeza, podrás llevarlos puestos todo el día. Las suaves almohadillas acolchadas ofrecen un ajuste cómodo y estable. Los dos micrófonos con Noise Cancelling, uno de alimentación anticipada y otro de retroalimentación, captan más sonidos ambientales, ya sea el ruido de un avión, del tráfico o de las conversaciones de la oficina.',
  4,
  8,
  22999,
  'https://i.imgur.com/R30ZBX8.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  19,
  'WI-1000XM2',
  'Auriculares WI-1000XM2',
  'Auriculares internos inalámbricos con Noise Cancelling WI-1000XM2',
  'La tecnología Noise Cancelling de los auriculares WI-1000XM2 es la más avanzada de la historia en unos auriculares inalámbricos con sujeción por detrás del cuello gracias a la potencia de nuestro procesador de Noise Cancelling HD QN1. Sumérgete por completo en tu música.',
  4,
  8,
  14999,
  'https://i.imgur.com/JVj9vEc.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  20,
  'WF-1000XM3',
  'Auriculares WF-1000XM3',
  'Auriculares inalámbricos con Noise Cancelling WF-1000XM3',
  'La tecnología Noise Cancelling integrada en los auriculares WF-1000XM3 es la más avanzada de la historia en unos auriculares totalmente inalámbricos con nuestro procesador de Noise Cancelling HD QN1e. Sumérgete por completo en tu música.',
  4,
  5,
  18999,
  'https://i.imgur.com/JTbdXuc.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  21,
  'WF-L900',
  'Auriculares WF-L900',
  'LinkBuds con diseño de anillo abierto y resistencia al agua IPX4',
  'Estos pequeños se conectan con tu vida diaria. Llévalos todo el día cómodamente sin dejar de oír lo que te rodea, sin notar nada en la oreja y sin tener que pausar tu música para oir a la gente y a tu entorno. Los LinkBuds tienden un puente entre tu vida cotidiana y tu entretenimiento favorito vayas donde vayas y hagas lo que hagas.',
  4,
  7,
  14999,
  'https://i.imgur.com/1rpvw0e.png'
);

---- CAMARAS (5)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  22,
  'ILCE-7M4 - ILCE-7M4K',
  'Cámara híbrida Alpha 7 IV',
  'Cámara híbrida de fotograma completo Alpha 7 IV',
  'Sensor de imagen CMOS Exmor R retroiluminado de fotograma completo de 33,0 MP de reciente desarrollo. Procesador de imágenes BIONZ XR avanzado con un rendimiento 8 veces superior. Creación de vídeos con capacidad de grabación en 4:2:2 de 10 bits en 4K de 60p. Las funciones avanzadas para vídeos incluyen Modo Activo, compensación de la variación de la longitud focal y ayuda de AF.',
  5,
  5,
  362194,
  'https://i.imgur.com/KgmsdbE.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  23,
  'ILME-FX3',
  'Cámara Cinema Line FX3',
  'Cámara Cinema Line FX3 de fotograma completo',
  'El panel táctil LCD tipo 3.0 (1,44 millones de puntos) tiene un diseño abierto en el lateral para lograr más flexibilidad y visibilidad al montar la cámara en cardanes o soportes. Rendimiento de fotograma completo con alta sensibilidad y un rango dinámico amplio. Motor de procesamiento de imágenes de alto rendimiento BIONZ XR. Grabación 4K (QFHD) de alta frecuencia de imagen de 120 fps. Ciencia cromática de cine con S-Cinetone™. Movilidad mejorada para su uso en solitario.',
  5,
  2,
  607719,
  'https://i.imgur.com/VPgvr2o.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  24,
  'ZV-E10',
  'Cámara videoblogs Z',
  'Cámara para videoblogs con objetivo intercambiable',
  'Eye AF en tiempo real para animales ya mediante actualización de software. Sensor CMOS Exmor™ APS-C de gran tamaño y 24,2 MP. Micrófono direccional de 3 cápsulas con paraviento. Funciones para videoblogueros: ajuste de presentación de productos, botón de bokeh, botón de fotografías, vídeos y cámara lenta y rápida. Conectividad flexible para un uso compartido sencillo.',
  5,
  5,
  109999,
  'https://i.imgur.com/wVxE6C1.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  25,
  'ILCE-1',
  'Cámara Alpha 1 α1',
  'Alpha 1 con una resolución y velocidad superiores',
  'La α1 ofrece nuevas cotas de rendimiento de imagen y eficiencia en flujos de trabajo, para una nueva libertad creativa. Sensor CMOS apilado de fotograma completo de 35 mm y de 50,1 MP con memoria integrada. El motor BIONZ XR avanzado aumenta la velocidad hasta 8 veces. Captura continua a 30 fps con seguimiento de AF/AE. Grabación de vídeos en 8K 30p. Amplia cobertura de AF con detección de fases de 759 puntos y detección de contraste de 425 puntos.',
  5,
  1,
  905271,
  'https://i.imgur.com/IsZoL3r.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  26,
  'ILCA-99M2',
  'Cámara Alpha 99 II',
  'Alpha 99 II con sensor de imagen de fotograma completo retroiluminado',
  'Alpha 99 II lleva el enfoque automático al siguiente nivel en materia de alta precisión y rapidez, y una sorprendente resolución: el mejor rendimiento en montura tipo A. 79 puntos de AF reticulares híbridos rápidos, mejorados y efectivos. Disparo continuo a alta velocidad de hasta 12 fps con seguimiento de AF/AE. Sensor CMOS Exmor R® de fotograma completo de 35 mm y 42,4 megapíxeles. Estabilización SteadyShot INSIDE de 5 ejes para fotografías y vídeos. Procesamiento de imagen BIONZ™ X.',
  5,
  3,
  465661,
  'https://i.imgur.com/S88BlMC.png'
);

---- HOME (4)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  27,
  'BDV-E6100',
  'Home Cinema BDV-E6100',
  'Home Cinema con Blu-ray',
  'La acción trepidante de una película, el rugir de la multitud en un partido o tus canciones favoritas: disfruta de todo con el sonido Surround dinámico. Con acceso con un solo toque a las canciones del smartphone Bluetooth® y NFC, podrás poner en marcha tu música en cuanto entres en la habitación. Nuestro último sistema de cine en casa cuenta con el innovador diseño Sense of Quartz, inspirado en los bordes del vidrio tallado y las caras brillantes del cristal de roca. Desde los altavoces a los mandos a distancia, cada elemento aporta un estilo refinado y sencillo a tu salón.',
  6,
  4,
  70999,
  'https://i.imgur.com/0h4A178.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  28,
  'HT-S40R',
  'Home Theatre HT-S40R',
  'Home Theatre 600 W de auténtico sonido Surround 5.1',
  'La HT-S40R te ofrece un sonido cinematográfico que inunda tu hogar con 600 W de auténtico sonido Surround 5.1 y parlantes posteriores inalámbricos que dan vida a cualquier película. Para disfrutar de una experiencia de audio excepcional, una combinación de Sound Bar, subwoofer y parlantes posteriores inalámbricos brinda un sonido Surround y dinámico que colma la habitación.',
  6,
  8,
  84999,
  'https://i.imgur.com/2ObOJMW.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  29,
  'BDV-N9200W - N9200WL',
  'Home Cinema BDV-N9200W',
  'Home Cinema con Blu-ray',
  'Disfruta de la potencia de las salas de cine en tu salón con el BDV-N9200W. Vive tus películas preferidas con un nivel de detalle casi real gracias a la transmisión y conversión de señales 4K. Desde las explosiones hasta los susurros cobrarán vida con sonido Surround 5.1 en los altavoces Magnetic Fluid, mientras que el audio de alta resolución eleva la calidad de la música a un nivel similar a la grabación original.',
  6,
  4,
  130999,
  'https://i.imgur.com/EhLVEwQ.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  30,
  'BDV-NF7220',
  'Home Cinema BDV-NF7220',
  'Home Cinema con Blu-ray',
  'El salón se convierte en un cine: disfruta del sonido Surround 5.1 y del impresionante audio de alta resolución con los altavoces Magnetic Fluid. Transmite con Wi-Fi® integrado y duplica tu teléfono compatible con Miracast en el televisor. Al convertir el sonido analógico a digital a una velocidad mayor que conversión estándar, la alta resolución revela detalles sutiles nunca antes escuchados en sonidos y diálogos.',
  6,
  6,
  90999,
  'https://i.imgur.com/Jo3b5Z9.png'
);

---- OBJETIVOS (5)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  31,
  'SEL2470GM2',
  'Objetivo SEL2470GM2',
  'Objetivo FE 24-70mm F2.8 GMaster II',
  'Objetivo zoom estándar G Master superior. Cuatro motores lineales XD (dinámico extremo) de alta potencia garantizan un rendimiento de AF extraordinario. 5 elementos asféricos, entre los que se incluyen 2 de tipo XA, 2 elementos de cristal ED y 2 Super ED para obtener una alta resolución. Un bokeh fantástico de F2,8 en todo el alcance del zoom, además de un excelente rendimiento en los primeros planos.',
  7,
  4,
  309290,
  'https://i.imgur.com/rfT676X.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  32,
  'SELP1635G',
  'Objetivo SELP1635G',
  'Objetivo FE PZ 16-35mm F4 G',
  'Objetivo G con zoom electrónico gran angular ultraligero y versátil. Dos elementos AA, un elemento asférico estándar y un elemento asférico ED para disfrutar de una alta resolución en toda el área de la imagen. Los dos motores lineales XD ofrecen un gran impulso para lograr un AF rápido, silencioso y con poca vibración. El nuevo sistema de zoom con cuatro motores lineales XD ofrece un control fluido y una respuesta inmediata. Tres anillas de control (zoom, enfoque y apertura).',
  7,
  5,
  193315,
  'https://i.imgur.com/ByaM6LI.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  33,
  'SEL70200GM2',
  'Objetivo SEL70200GM2',
  'Objetivo FE 70-200mm F2.8 GMaster OSS II',
  'Zoom telescópico superior de la serie G Master. Un elemento XA, dos cristales Super ED y tres ED para una resolución alta en todo el alcance del zoom. Los motores lineales XD ofrecen una excelente respuesta y baja vibración para contar con un AF rápido y preciso. Nanorrevestimiento antirreflectante II de Sony para minimizar destellos e imágenes superpuestas. Funcionalidad, movilidad y fiabilidad para satisfacer las necesidades de captura profesional.',
  7,
  1,
  386703,
  'https://i.imgur.com/Qhgj21R.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  34,
  'SEL14F18GM',
  'Objetivo SEL14F18GM',
  'Objetivo FE 14mm F1.8 GMaster',
  'Objetivo prime ultra gran angular superior G Master. Elementos XA y de cristal Super ED y dos cristales ED para una alta resolución en toda la imagen. Perspectivas ultra gran angular con gran apertura en un objetivo increíblemente compacto. Los motores lineales XD ofrecen una excelente respuesta y baja vibración para contar con un AF rápido y preciso. El botón de fijación de enfoque y otras funciones satisfacen tus necesidades de captura profesionales.',
  7,
  3,
  206203,
  'https://i.imgur.com/pheelj3.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  35,
  'SEL24F28G',
  'Objetivo SEL24F28G',
  'Objetivo FE 24mm F2.8 GPrime',
  'Objetivo G prime gran angular. Este objetivo reúne la imagen de alta calidad y el atractivo bokeh del objetivo G en un diseño compacto con gran calidad de construcción y funcionamiento intuitivo. Es fácil de transportar e ideal para fotos vistosas en gran angular. El AF rápido, preciso y silencioso es ideal para fotos y vídeos, y garantiza la captura de esos momentos vitales. Motores lineales dobles para un enfoque automático rápido, preciso y silencioso.',
  7,
  4,
  89999,
  'https://i.imgur.com/nbht9Fg.png'
);

---- PLAYSTATION (5)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  36,
  'CFI-1102A',
  'PS5® CFI-1102A',
  'PlayStation 5 PS5 Blu-ray Edition Console (AUS Plug) CFI-1002A / CFI-1102A',
  'Aprovecha la potencia de una SSD con E/S integradas, una CPU y GPU personalizadas que reinventan las reglas de lo que una consola PlayStation es capaz de hacer. Ray tracing aporta nuevos niveles de realismo con reflejos y sombras naturales a los juegos de PS5. Disfruta de una experiencia de juego fluida con una alta velocidad de fotogramas de hasta 120 fps en juegos compatibles y salida de 120 Hz en pantallas 4K.',
  8,
  10,
  91999,
  'https://i.imgur.com/DBYXjLy.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  37,
  'CFI-ZCT1W',
  'DualSense™ CFI-ZCT1W',
  'Mando inalámbrico DualSense™ PlayStation 5',
  'El mando inalámbrico DualSense mantiene muchas características del DUALSHOCK®4, que vuelven para una nueva generación de juegos. Éste ofrece una inmersiva retroalimentación háptica, gatillos adaptativos dinámicos y un micrófono integrado, todo ello en un diseño icónico. Siente la respuesta táctil capaz de transmitir las acciones del juego con dos activadores que sustituyen a los motores de vibración tradicionales. Cuando lo tienes en las manos, estas vibraciones dinámicas son capaces de simular todo tipo de sensaciones, como los elementos del entorno o el retroceso de diferentes armas.',
  8,
  8,
  14999,
  'https://i.imgur.com/fo1vG8c.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  38,
  'CFI-ZWH1',
  'Pulse 3D CFI-ZWH1',
  'Auriculares inalámbricos PULSE 3D™ PlayStation 5',
  'Los auriculares inalámbricos PULSE 3D se han diseñado específicamente para ofrecer el audio 3D que la PlayStation®5 ha hecho posible. Con la tecnología de audio 3D Tempest, la consola PS5 te sumerge en paisajes sonoros increíbles que te permitirán disfrutar del sonido como si viniese de todas direcciones. Juega con estilo gracias a las almohadillas de felpa y la banda de sujeción de la diadema mejoradas.',
  8,
  6,
  24999,
  'https://i.imgur.com/JTwIbOG.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  39,
  'CFI-ZEY1',
  'Cámara HD CFI-ZEY1',
  'Cámara HD PS VR PlayStation 5',
  'Con lentes duales de 1080p y un soporte integrado, la cámara HD funciona a la perfección con las herramientas de eliminación del fondo de la PS5 para convertirte en el centro de atención. Crea una grabación o transmisión de tu partida rápidamente con el botón de creación de tu mando inalámbrico DualSense™. También puedes añadir tu imagen a los vídeos de tus partidas con la cámara HD mientras los transmites en modo imagen en imagen, gracias a su capacidad de recortar el fondo o eliminarlo por completo con una pantalla verde.',
  8,
  3,
  8999,
  'https://i.imgur.com/4FFi8MO.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  40,
  'CUH-ZVR1',
  'Casco VR CUH-ZVR1',
  'Casco PS VR Inmersivo PlayStation 5',
  'Conviértete en el centro de extraordinarios universos de juego con juegos exclusivos de PS VR gracias a la potencia de tu consola PlayStation®. Visión de 360 grados!, observa cómo un mundo interactivo cobra vida a tu alrededor con un campo de visión sin cortes mires a donde mires. Descubre una nueva dimensión de sonido: la tecnología audio 3D te permite localizar la procedencia y la distancia de los sonidos que oyes a tu alrededor. Experimenta nuevas realidades con una pantalla OLED personalizada y gráficos a 120 fps para disfrutar de una inmersión completa en tus juegos.',
  8,
  1,
  41999,
  'https://i.imgur.com/j1szYiH.png'
);

---- REPROUCTORES (3)

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  41,
  'NW-WM1ZM2',
  'Walkman NW-WM1ZM2',
  'The new Walkman® WM1ZM2 Signature Series',
  'Fabricados con un material único de espuma de poliuretano desarrollado por Sony. Suaves y elásticos, mejoran la adhesión a la pared del canal auditivo y minimizan los huecos en la superficie de contacto. Mejoran el aislamiento acústico y eliminan más ruido, especialmente en el rango de alta frecuencia.',
  9,
  3,
  609999,
  'https://i.imgur.com/HT2jJbL.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  42,
  'WM1AM2',
  'Walkman WM1AM2',
  'The strong Walkman® digital multimedia player WM1AM2',
  'Reproducción de sonido fidedign. La tecnología de amplificación digital S-Master™ HX de Walkman® es compatible con el formato DSD nativo y admite una salida equilibrada y de alta potencia. Reduce la distorsión y el ruido en varias frecuencias para un sonido rico y completo, que mejora aún más por la nueva soldadura sin plomo de alta calidad.',
  9,
  3,
  569999,
  'https://i.imgur.com/vo8yqC2.png'
);

INSERT INTO producto (id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto)
VALUES (
  43,
  'NW-ZX300',
  'Walkman NW-ZX300',
  'Walkman® digital multimedia player ZX300 de la serie ZX',
  'Calidad superior con DSD nativo de 11,2 MHz usando auriculares equilibrados y compatibilidad con PCM de 384 KHz/32 bits. El amplificador digital S-Master HX™ reduce la distorsión y el ruido en un amplio rango de frecuencias para que experimentes un sonido excepcional y completo. Escucha lo que te estabas perdiendo. DSEE HX™ mejora tu música para aproximarla a una calidad de sonido de alta resolución.',
  9,
  3,
  529999,
  'https://i.imgur.com/tSxOE9P.png'
);

################ CARRITO

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto)
VALUES (
  1,
  1,
  12
);

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto)
VALUES (
  2,
  1,
  27
);

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto)
VALUES (
  3,
  1,
  5
);

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto)
VALUES (
  4,
  1,
  40
);

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto)
VALUES (
  5,
  1,
  39
);

################ CLIENTE

INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente)
VALUES (
  1,
  'Juan',
  'Bustamante',
  'juanbusta',
  'juanbustamante@gmail.com',
  'Mendoza',
  'Lavalle 3256',
  2617385900
);

INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente)
VALUES (
  2,
  'Martin',
  'Pico',
  'tincho88',
  'martinpico@gmail.com',
  'Cordoba',
  'Caschleue 1650',
  3517377960
);

INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente)
VALUES (
  3,
  'Mario',
  'Moran',
  'mariomoran1',
  'martinpico@gmail.com',
  'Santa Fe',
  'Parana 1080',
  3414465167
);

INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente)
VALUES (
  4,
  'Braulio',
  'Norbertus',
  'brauliosoldado',
  'braulionorber@gmail.com',
  'Mendoza',
  'Paso de los Andes 2070',
  2612510544
);

INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente)
VALUES (
  5,
  'Jose',
  'Friedrich',
  'pepefri3',
  'pepefriedrich@gmail.com',
  'Buenos Aires',
  '9 de julio 3090',
  1127012217
);

################ VENTA

INSERT INTO venta (id_venta, fecha_venta, id_carrito, id_cliente)
VALUES (
  1,
  '2022-01-23 12:45:55',
  2,
  1
);

INSERT INTO venta (id_venta, fecha_venta, id_carrito, id_cliente)
VALUES (
  2,
  '2022-02-11 14:20:08',
  1,
  2
);

INSERT INTO venta (id_venta, fecha_venta, id_carrito, id_cliente)
VALUES (
  3,
  '2022-04-17 22:11:52',
  4,
  3
);

INSERT INTO venta (id_venta, fecha_venta, id_carrito, id_cliente)
VALUES (
  4,
  '2022-07-29 17:40:21',
  3,
  4
);

INSERT INTO venta (id_venta, fecha_venta, id_carrito, id_cliente)
VALUES (
  5,
  '2022-09-09 20:30:40',
  5,
  5
);
