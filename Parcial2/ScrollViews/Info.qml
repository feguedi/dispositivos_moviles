import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Flickable {
    id: root
    contentHeight: pane.height
    contentWidth: ancho
    ScrollIndicator.vertical: ScrollIndicator { }

    property alias ancho: root.width
    property alias alto: info.height
    property alias altoImg: img.height

    Pane {
        id: pane
        width: parent.width
        height: (alto + img.height) * 1.3

        ColumnLayout {
            id: column
            width: parent.width
            spacing: 10

            Image {
                id: img
                width: root.width / 0.8
                Layout.fillHeight: false
                clip: false
                Layout.fillWidth: true
                fillMode: Image.PreserveAspectFit
                // sourceSize.height: ancho / 667
                source: "isis.jpg"
            }

            Label {
                id: info
                width: ancho
                anchors.top: img.bottom
                anchors.topMargin: 20
                wrapMode: Label.WordWrap
                elide: Text.ElideMiddle
                textFormat: Text.RichText

                font {
                    pointSize: 21
                    family: "Droid Sans"
                }

                verticalAlignment: Text.AlignVCenter
                clip: true
                Layout.fillWidth: true

                text: "<p>Cómo nace el Estado Islámico (ISIS o Daesh, en árabe), cómo se financia, quiénes hacen la vista gorda y el paso al frente de Francia, el crecimiento del ISIS y las injerencias.</p>

    <h2>Los inicios de lo que después sería el ISIS</h2>

    <p />Los antecedentes que dieron lugar al ISIS surgen en el contexto de la ocupación de Irak. Tras la toma del país por las tropas británicas y estadounidenses (y españolas hasta 2004), se formaron diversos grupos armados para luchar contra los invasores.

    <p />Entre ellos aparece la autodenominada organización de la base yihadista en Mesopotamia (procedente de Jamaa al Tawhid wal-Jihad, nacida en 1999), conocida en la prensa como Al Qaeda en Irak. Posteriormente se uniría a otros grupos bajo el nombre primero de Consejo de Muyaidines y después, en 2006, Estado Islámico de Irak.

    <h2>El contexto en Irak </h2>

    <p />Miles de iraquíes fueron detenidos en cárceles secretas estadounidenses, donde recibieron torturas diarias. Algunos arrestados desaparecían para siempre. Otros reaparecían años después devastados por las torturas, y con una sobrevenida, inquebrantable y extremista fe religiosa.

    <p />Tras la ocupación EEUU desarticuló inmediatamente las Fuerzas Armadas iraquíes, criminalizó el partido Baaz e integró a milicias sectarias en las nuevas fuerzas de seguridad iraquíes para luchar contra la resistencia. Fomentó las divisiones y entrenó a integrantes de milicias policiales que sembraron el terror.

    <p />Fue lo que se llamó los escuadrones de la muerte, comandos que arrestaron a miles de jóvenes suníes, muchos de los cuales aparecían semanas después muertos en las calles de ciudades como Bagdad, con orificios de bala en la cabeza, pies o pulmones, con huesos rotos, cráneos aplastados, piel quemada o arrancada, signos de descargas eléctricas u ojos fuera de sus órbitas.

    <p />Cientos de miles de familias huyeron del país. En tan solo unos meses más de cinco millones de iraquíes se convirtieron en refugiados. Dos millones y medio de ellos se instalaron en Siria.

    <p />En poco tiempo Irak, que había sido un país donde muchos chiíes y suníes convivían juntos, donde un elevado porcentaje de los matrimonios eran mixtos, donde no había grandes tensiones sectarias, se convirtió en un infierno. Muchos antiguos integrantes de las Fuerzas Armadas desmanteladas compartieron celda con miembros de grupos religiosos que iban radicalizándose a medida que aumentaba la violencia y la represión.

    <h2>El grupo de la cárcel de Camp Bucca</h2>

    <p />Abu Baker Al Bagdadi, que se convertiría en 2010 en el líder del Estado Islámico de Irak, fue arrestado por los estadounidenses en 2004 en la ciudad de Faluya, duramente golpeada por las fuerzas de ocupación, que bombardearon viviendas, mercados, escuelas, hospitales y emplearon fósforo blanco, un armamento letal que abrasa la piel de sus víctimas. El dolor provocado en aquella ciudad es recordado hasta día de hoy por sus habitantes.

    <p />Al Bagdadi fue enviado a la cárcel de Camp Bucca, donde las torturas estaban a la orden del día. Algunos se empaparon allí de las doctrinas más extremistas y desvirtuadas del Islam, como el wahabismo. De aquella prisión saldrían muchos hombres listos para integrar las filas del Estado Islámico.

    <h2>Las revueltas en Irak</h2>

    <p />En 2010, en un Irak totalmente roto, irrumpió un movimiento pacífico de protesta contra el gobierno central, que tomó fuerza tras el estallido de las revueltas en Túnez o Egipto en 2011.

    <p />Entrevisté por aquél entonces a uno de los organizadores de aquellas manifestaciones iraquíes, Udai Al Zaidi, hermano del famoso periodista que arrojó un zapato a George Bush y fue encarcelado por ello. Al Zaidi, chií, se manifestaba en Irak con miles de suníes y chiíes más, contra un gobierno al que tachaban de corrupto y sectario.

    <p />El gobierno de Al Maliki, aferrado al poder, reprimió aquellas multitudinarias protestas empleando balas contra los manifestantes, y apoyado por el Ejército estadounidense. Murieron cientos de personas y miles fueron encarceladas.

    <p />Manifestantes iraquíes en 2011 tratando de derribar un muro de la Zona Verde controlada por EEUU. En la misma época en Siria estallaban las revueltas

    <h2>El Estado Islámico en Siria</h2>

    <p />La represión gubernamental iraquí contra todo tipo de queja o protesta aumentó y llevó al extremismo a algunos sectores de la oposición.

    <p />Lo mismo ocurrió en Siria, donde las revueltas habían estallado en marzo de 2011. El Estado Islámico de Irak envió una delegación a Siria en agosto de 2011, cuando la guerra civil siria ya estaba en marcha, tras el aplastamiento de las revueltas por Bashar al Assad.

    <p />El líder del Estado Islámico de Irak, el clérigo Al Bagdadi, formateado tras su paso por la cárcel de Camp Bucca y la guerra, anunció en 2013 la creación del Estado Islámico de Irak y Levante (Siria).

    <h2>El auge del ISIS</h2>

    <p />En 2014 el Estado Islámico se hizo fuerte en Siria e Irak. Miles de hombres del ISIS, armados y protegidos con humvees y tanques, tomaron varias ciudades iraquíes sin apenas resistencia.

    <p />Contacté entonces con algunos antiguos efectivos de las fuerzas armadas iraquíes desmanteladas por EEUU y de varios grupos de la resistencia iraquí. En un momento en el que ellos mismos habían ganado posiciones en territorio iraquí, se hacían la siguiente pregunta:

    <p />¿Interrumpimos nuestra lucha contra nuestro enemigo, el gobierno de Al Maliki (apoyado por EEUU), para luchar contra el Estado Islámico, superior en número y fuerza a nosotros, o nos unimos al Daesh, a pesar de nuestras diferencias, para evitar ser derrotados?

    <p />La respuesta elegida por muchos fue la segunda. Prefirieron ser cómplices que enemigos.

    <p />Quién les iba a decir a algunos oficiales de las fuerzas del laico Baaz iraquí en 2003 que años después combatirían mano a mano con yihadistas extremos que proclamaban un Califato y dictaban las normas más violentas y medievales en nombre de un distorsionado e instrumentalizado Islam.

    <p />Abu Baker Al Bagdadi se convirtió en líder del Daesh (ISIS) en 2010. Iraquí arrestado en Faluya e internado en Camp Bucca.

    <h2>La toma de más territorio</h2>

    <p />Grupos suníes de diversa procedencia, solo unidos por un enemigo común, terminaron integrando las filas del Daesh. Tomaron varias ciudades iraquíes y llegaron muy cerca de Bagdad. Apenas encontraron resistencia por parte del ejército iraquí, marcado por la corrupción:

    <p />“Los militares se fueron corriendo, no había aviones, no había nada que los parara. Para ser sincero, los únicos que hicieron algo para detener (al Daesh) fueron los militares iraníes y las milicias chiíes”, confesaba recientemente el exministro de Defensa iraquí Ali Allawi en un documental de Al Jazeera.

    <p />Desvincular Irak como contexto y desarrollo del Daesh sería hacer un análisis cojo de su evolución. En 2014, tras la toma de un amplio territorio en Irak, el Daesh proclamó el Califato del Estado Islámico de Irak y Siria, controlando un espacio similar al de Jordania. A sus filas se unieron chechenos, musulmanes procedentes de los Balcanes, del norte de África y de Asia.

    <p />En agosto de 2014 llegó la respuesta internacional. Obama prometió acabar con el Daesh, y una alianza militar integrada por EEUU, Arabia Saudí, Emiratos o Jordania empezó a bombardear focos supuestamente controlados por el grupo terrorista.

    <h2>La vista gorda y la financiación</h2>

    <p />El Daesh ha sido visto por algunos actores regionales -Israel, Turquía, Arabia Saudí, etc- como un arma potencial contra Irán. Ha mantenido débil al régimen chií de Irak y ha tenido ocupados a grupos enemigos de Israel, como Hezbolá, que lucha en Siria contra diversos grupos de la oposición, entre ellos el Daesh.

    <p />Turquía ha hecho la vista gorda ante el Daesh. El primer ministro Erdogan ha querido ver en movimientos islamistas radicales una forma de detener tanto la influencia chií en la zona como a los kurdos. Ha permitido el paso de yihadistas por su frontera, ha bombardeado a las YPG kurdas -unidades de protección popular- cuando se suponía que esos ataques tenían que dirigirse al Daesh, y ha permitido el flujo de camiones que cruzan la frontera cargados de petróleo procedente de los campos sirios controlados por el ISIS.

    <p />De ese modo cree evitar la posibilidad de una soberanía de los kurdos -que están luchando contra el Daesh- junto a su territorio.

    <p />La compra de petróleo en el mercado negro turco ha sido uno de los modos más eficaces de financiación para el Daesh, junto con el cobro de grandes sumas de dinero por el rescate de algunos secuestrados.

    <p />También recibe apoyo económico de individuos saudíes ante los que el régimen de Riad hace la vista gorda. Esas personas entregan dinero al Daesh y hacen lobby por él, presionando para que otros lo apoyen.

    <h2>La guerra contra el terror</h2>

    <p />Los aliados de EEUU en Siria en la coalición que bombardea el país han sido entre otros la monarquía absolutista de Arabia Saudí, que sigue consintiendo el apoyo al Daesh desde su país.

    <p />Washington y los saudíes también operan juntos, con Emiratos, en la coalición que bombardea Yemen, donde están creando más caldo de cultivo para el terrorismo con ataques como el que el pasado septiembre mató a 131 personas e hirió a cientos más.

    <p />Las matanzas como la de París son habituales en Oriente Próximo y Medio, ya sea por ejércitos o por grupos terroristas. La llamada guerra contra el terror, la estrategia de las bombas y las intervenciones, se ha mostrado ineficaz: lejos de menguar, el terrorismo y la violencia crecen.

    <p />François Hollande decía el sábado que la masacre de París es un acto de guerra. En realidad Occidente participa en una contienda desde que se involucró en Afganistán armando a los muyaidines que devinieron en los talibanes. Luego llegarían Irak, Libia, Siria, Yemen… Pero al ser guerras que se libran lejos de nuestras fronteras, solo nos acordamos de ellas cuando algún macabro eco llega a nuestros territorios.

    <h2>El paso al frente de Francia</h2>

    <p />Dijo Hollande que la masacre de París es un acto de guerra, pero lo cierto es que Francia lleva participando en guerras desde hace tiempo.

    <p />En los últimos años nuestro país vecino ha querido situarse en primera fila de la geopolítica, en busca de una mayor influencia internacional. Para ello abanderó la defensa de la intervención militar en Libia, de la mano del filósofo Bernard-Henri Levy, quien ayer mismo pedía, en una huida hacia adelante, más tropas en el terreno sirio y más guerra.

    <p />Con la excusa de liberar una ciudad de las garras del ejército de Gadafi, una coalición militar liderada por Francia y Reino Unido -con compañeros de dudosa reputación- armó en 2011 a grupos yihadistas y a individuos que antes habían participado en la guerra contra EEUU en Afganistán.

    <p />Aquella operación prosiguió durante meses y no paró hasta que Francia y EEUU asesinaron extrajudicialmente a Gadafi. Fue llamativo que ambos países se disputaran, cual botín, la autoría de un asesinato que violaba la ley internacional.

    <h2>“Llegamos, vimos, murió”</h2>

    <p />Libia quedó fragmentada y dividida en milicias armadas por Occidente, algunas de ellas extremistas. No importó. Hillary Clinton no pudo evitar aquello de “llegamos, vimos y murió”, comentando el asesinato de Gadafi. El salvaje oeste volvía a ser reivindicado. ¿Para qué hay cárceles y tribunales cuando se puede ejecutar a alguien sin más?

    <p />Libia se convirtió en arsenal de yihadistas armados que participarían en el horror actual que vive tanto ese país como Siria.

    <p />Francia también impulsó una intervención militar en Malí en 2013, enviando tropas galas al terreno.

    <h2>Los papeles en Siria</h2>

    <p />Desde 2011 varios servicios secretos occidentales, así como unidades especiales de EEUU, estuvieron presentes en Siria, estudiando a qué grupos de la oposición apoyar y armar.

    <p />Ya en 2012 escribí en el libro “Yo muero hoy. Las revueltas en el mundo árabe” cómo Francia o Reino Unido, así como Arabia Saudí, Emiratos o Qatar, estaban ofreciendo apoyo logístico, militar o de inteligencia a diversos grupos “rebeldes”, algunos de ellos yihadistas.

    <p />La apuesta de Obama fue la estrategia del desgaste: dejar que los bandos implicados se debilitaran entre ellos, apoyando a determinados grupos de la oposición pero sin facilitar armamento pesado y evitando un desenlace.

    <p />En 2014 comenzó una campaña de bombardeos aéreos por EEUU y aliados del Golfo y en septiembre de este año se unió Francia. No es la primera vez por tanto que aviones franceses atacaban posiciones del Daesh.

    <p />Irán y Rusia estuvieron presentes respaldando al régimen de Bashar al Assad, que no dudó en golpear duro en sus bombardeos sobre zonas urbanas en un intento por acabar con la oposición, a costa de muerte y destrucción, lo que contribuyó al aumento del extremismo.

    <h2>El Daesh en Siria</h2>

    <p />Con la llegada a Siria de una delegación del “Estado Islámico” de Irak en agosto de 2011 se puso en marcha el “Estado Islámico” de Irak y Siria, que se asentó en varias áreas suníes del país, algunas de ellas cercanas a la frontera de Turquía, donde han operado los servicios secretos turcos, que han hecho la vista gorda ante las idas y venidas de los yihadistas. Como apuntaba en la primera parte de este artículo, varios actores regionales se han beneficiado de la existencia del ISIS.

    <p />En 2013, tras la toma de algunas ciudades importantes de Irak, el ISIS se hizo fuerte y popular entre algunos sectores de jóvenes musulmanes marcados por la guerra o por la desafección. A ello ha contribuido su sofisticada campaña propagandística a través de Internet.

    <h2>Sykes-Picot</h2>

    <p />El ISIS ha proclamado en un vídeo que Sykes-Picot se ha acabado, y muchos en la región opinan que estamos ante un segundo Sykes-Picot.

    <p />El acuerdo de Sykes-Picot, llamado así por el apellido de sus dos valedores, fue suscrito de forma secreta en 1916, en la I Guerra Mundial, entre Francia y Reino Unido. A través de él ambas potencias se repartían el control de Oriente Medio en caso de una victoria militar: Francia ejercería su influencia sobre los actuales Siria y Líbano, y Reino Unido sobre Transjordania (la actual Jordania y Cisjordania), Palestina e Irak.

    <p />Así lo acordaron y así se hizo, a pesar de que sus promesas a la población local habían sido otras. La independencia ansiada por los árabes cayó en saco roto. Sykes-Picot convirtió antiguas provincias del Imperio otomano en países, dibujó fronteras a su antojo y repartió un suculento pastel entre París y Londres.

    <h2>El papel de Francia en la zona</h2>

    <p />Desde 1920 y hasta la década de los 40 Francia ejerció su control sobre la Gran Siria, que comprendía lo que hoy conocemos como Líbano y Siria. En Líbano se impuso un sistema de reparto de poder en función de la confesión religiosa fomentado por París, interesado en beneficiar a los cristianos.

    <p />Ese sistema estableció la presencia en el Parlamento de seis cristianos por cada cinco musulmanes, a pesar de que estos eran mayoría en el país. Aquello estableció una división de facto entre las diferentes religiones.

    <p />En Siria Francia también ejerció su mandato imponiendo sus intereses, violando la independencia que el rey Faisal I había declarado en 1920 y declarando Siria como su “colonia”.

    <p />El oficial francés Goraud comandó sus tropas hasta Damasco, ocupó la ciudad y aplastó una revuelta popular contra el mandato de París, en la batalla de Maysalum. Tras ello, Goraud se dirigió a la tumba de Saladino, la pateó y, según se le atribuye hasta hoy, dijo: “Despierta, Saladino. Hemos regresado. Mi presencia aquí consagra la victoria de la Cruz sobre la Media Luna”.

    <p />A pesar de la represión francesa, en los siguientes años se sucedieron varias revueltas en Siria y Líbano en contra de la dominación extranjera. Es importante tener en cuenta cómo esta lleva siendo percibida desde hace décadas.

    <h2>Las injerencias</h2>

    <p />En 1948, en territorio vecino a Siria, nacería el Estado de Israel, auspiciado por la ONU, las potencias occidentales y la URSS y con la oposición de los países árabes de la zona, que veían peligrar sus propios territorios.

    <p />Cuatro años antes, cuando dos rabinos habían ido a la Casa Blanca pidiendo un Estado judío en Palestina al presidente Roosvelt, este dijo: “Pensando en ello, dos hombres, dos hombres sagrados, vienen aquí a pedirme que permita que millones de personas sean asesinadas en una yihad”.

    <p />También entonces Hannah Arendt explicó su oposición al sionismo alegando que las políticas judías en Palestina dependerían de la protección de las grandes potencias. Y así ha sido. Occidente ha seguido desde entonces tomando partido por la ocupación israelí, que sigue en Cisjordania, Jerusalén Este, Gaza y los Altos del Golán de Siria.

    <p />La permisividad de Occidente con semejantes políticas, en comparación con sus castigos a los árabes, tiene sin duda consecuencias que habría que valorar.

    <p />La era colonial en Oriente Próximo y las injerencias -como el golpe de Estado de la CIA y Reino Unido contra el gobierno democrático iraní de Mossadeq- desembocaron en la creación de organizaciones árabes de resistencia armada o, en el caso iraní, en la revolución islámica del 79.

    <p />En los años setenta los movimientos árabes seculares dominaban la escena, pero empezaron a crecer algunos grupos religiosos islámicos, impulsados y apoyados por regímenes conservadores que querían menguar la influencia de ese nacionalismo árabe laico predominante hasta entonces.

    <h2>El punto de inflexión</h2>

    <p />Y llegamos de nuevo al punto de inflexión: la guerra de Afganistán y los integristas islámicos que recibieron armas y financiación de EEUU o Arabia Saudí para combatir a la URSS en suelo afgano.

    <p />Al mismo tiempo Israel invadía Líbano, lo que provocó la creación de Hezbolá, que en 1983 perpetró un enorme atentado suicida contra el cuartel de los marines estadounidenses en Beirut y contra un puesto de mando francés.

    <p />A la vez en Palestina estallaba la primera Intifada y, al calor de la represión israelí, surgió la oganización de resistencia armada palestina Hamás. También nacían la Yihad Islámica y grupos extremistas egipcios.

    <p />Pocos años después en Argelia, excolonia francesa, se producía un golpe de Estado para impedir que el Frente Islámico de Salvación, que había ganado las elecciones en primera vuelta, pudiera gobernar. De ese modo nació el GIA, Grupo Islámico Armado, que protagonizó uno de los primeros atentados yihadistas registrados en Francia.

    <p />Todo aquello supuso la consolidación del islamismo y el extremismo en los grupos armados que luchaban o por la independencia, o contra la ocupación, o simplemente ya por la yihad. El remate final lo pusieron la invasión de Afganistán en 2011, la ocupación de Irak en 2003 y el infierno que provocaron.

    <p />En 2006 nuevamente Occidente no quiso reconocer al ganador de unas elecciones democráticas cuando Hamás arrasó en los territorios palestinos. Posteriormente en 2013 en Egipto un golpe de Estado respaldado por sectores occidentales derrocó al gobierno de los Hermanos Musulmanes elegido en las urnas e instauró una fuerte represión, lo que ha provocado que algunos jóvenes egipcios, radicalizados, hayan viajado a Siria para unirse a la guerra.

    <p />Lo mismo ha ocurrido en Siria, donde la guerra y la represión solo han engendrado fanatismo y dolor.

    <h2>Con cada intervención…</h2>

    <p />El exgeneral estadounidense Wesley Clark dijo hace unos meses que “EEUU usó el Islam radical para luchar contra los soviéticos en Afganistán. Rogamos a los saudíes que pusieran dinero; y lo hicieron”.

    <p />También este año un antiguo enviado especial de la ONU, Lakdar Brahimi, que trabajó en Irak y Afganistán, atribuyó la emergencia del ISIS a la invasión de Irak: “No había justificación para la guerra de Irak y todos pagamos las consecuencias”.

    <p />Las guerras en las que Occidente lleva años involucrado no solo no han parado el terrorismo, sino que este ha aumentado.

    <p />Con cada bomba sobre determinadas zonas de Siria, con cada discurso desafiante, con cada retórica racista, el ISIS ganará nuevos adeptos no solo en Oriente Próximo, sino también en barrios deprimidos de Europa como en el que vivía uno de los terroristas de París.

    <p />Este escrito es un simple repaso, poco completo porque este formato lo impide, pero suficiente para mostrar que, a pesar de lo que algunos insinúan en programas y tertulias, el extremismo violento que se ejerce en nombre del Islam no procede de ningún ADN connatural a una religión o a una etnia; que no surge por ciencia infusa de la nada; que todo tiene un contexto político e histórico; que para buscar soluciones a los problemas hay que analizar sus causas.</p>"
            }
        }
    }
}
