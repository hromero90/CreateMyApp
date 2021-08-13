import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

//1 Modifique esa linea agregando required
  Character(
      {required this.name,
      required this.imagePath,
      required this.description,
      required this.colors});
}

List characters = [
  Character(
      name: "1 - Rentabilidad",
      imagePath: "assets/images/rentabilidad.png",
      description:
          "la importancia de las apps en las empresas radica en su versatilidad para generar ingresos y optimizar la compra. Con una aplicación móvil se pueden adquirir ingresos a través de la publicidad, suscripción regular o única, servicios premium y descargas.\n \nAsimismo, se puede ofrecer al usuario diferentes métodos digitales para efectuar la compra de forma rápida, segura y sencilla. Esto propicia el retorno de clientes y un buen flujo de ventas.",
      colors: [Colors.green.shade200, Colors.green.shade900]),
  Character(
      name: "2 - Posicionamiento",
      imagePath: "assets/images/posicionamiento.png",
      description:
          "El posicionamiento es un factor fundamental cuando se trata de impulsar empresas jóvenes. Las aplicaciones permiten trabajar la presencia de las startups con dos tácticas.\n \n1 - Mantenerse siempre presente y accesible en el teléfono del usuario, sin tener que obligarlo a ingresar a la web o servidores de terceros-\n \n2 - Adquirir notoriedad en otros rincones de internet de amplia audiencia, como las tiendas de Google Play y Itunes.",
      colors: [Colors.pink.shade200, Colors.redAccent.shade400]),
  Character(
      name: "3 - Innovación",
      imagePath: "assets/images/innovacion.png",
      description:
          "Todas las empresas de éxito tienen algo en común: están orientadas a la innovación tecnológica y van a la par de las tendencias del mercado.\n \nEn un mundo donde el usuario exige inmediatez, simplificación e hiperconectividad, las apps tienen la capacidad de cubrir las necesidades del cliente actual en cualquier nicho del mercado.\n \nDe igual modo, son programas tan versátiles que permiten a las empresas desarrollar formas disruptivas de presentar sus servicios al público. Con esto, los modelos escalables de las startups pueden mantener su vigencia en el tiempo.",
      colors: [Colors.blueAccent.shade100, Colors.blue.shade900]),
  Character(
      name: "4 - Modelo de Negocio",
      imagePath: "assets/images/modelo_negocio.png",
      description:
          "Antes de emprender el diseño de la app se debe determinar qué modelo de negocios de aplicaciones será el más efectivo, y si este es capaz de adaptarse a las características singulares de la startup.\n \n1 - Modelo In-App Advertising:\n \nEste modelo es especialmente útil cuando la empresa desea darse a conocer, construir posicionamiento y ganar reputación. Las aplicaciones In-App Advertising facilitan el acceso de nuevos usuarios a la marca pues su descarga es totalmente gratuita.\n \nEn este caso, los ingresos devienen de los espacios publicitarios dispuestos a lo largo del recorrido del usuario. Debido a que la forma de monetización puede ser intrusiva, se recomienda prestar especial cuidado a la cantidad de publicidad y sus formas de figurar en la app, ya que el exceso de promoción entorpece la UX.\n \n2 - Modelo Freemium:\n \nEn este modelo, se ofrece al usuario una experiencia gratuita a modo de reseña para convencerlo de adquirir el producto pago. Ya sea con días de free-trial o con límites de acceso a ciertos servicios.\n \nDe esta manera, la empresa obtiene una mayor diversificación de ingresos y se da la oportunidad al cliente de pagar el servicio a su medida. Es decir que, las personas pueden optar tanto por la compra del paquete completo como desbloquear algunas características del mismo.\n \n3 - Mobile e-commerce:\n \nAplicaciones para comercio electrónico móvil. Este modelo tiene como objetivo el uso único de la app para optimizar el sistema de ventas, por lo que su descarga es gratuita. El desarrollo de la aplicación gira en torno a efectuar pagos digitales de forma segura y rápida.\n \nEstos programas de mobile e-commerce han probado su efectividad en empresas que ofrecen productos y servicios fuera del mundo digital. De esta forma, se diversifican los ingresos, se llega a un número más amplio de consumidores y se adquieren clientes asiduos.",
      colors: [Colors.brown.shade200, Colors.brown.shade900]),
];
