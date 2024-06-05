import 'package:flutter/material.dart';

class TypesOfDiscountsPage extends StatelessWidget {
  final bool isEnglish;

  const TypesOfDiscountsPage({Key? key, required this.isEnglish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80), // Dark background color
      appBar: AppBar(
        title: Text(
          isEnglish ? 'Types of Discounts' : 'Tipos de Descuentos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.orange, // Set background color to orange
        iconTheme: IconThemeData(color: Colors.white), // Set back button color to white
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => TypesOfDiscountsPage(isEnglish: !isEnglish),
              ));
            },
            child: Text(
              isEnglish ? 'Español' : 'English',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isEnglish ? 'Objective: Understand different types of discounts, recognize examples of each, and identify scenarios where they might be used.' : 'Objetivo: Comprender los diferentes tipos de descuentos, reconocer ejemplos de cada uno e identificar escenarios en los que podrían usarse.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Understanding Discounts' : 'Comprender los Descuentos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? '% Off (Percentage Off): When learning about discounts in math, the percentage off (% off) is often the most commonly discussed type. The key idea is that a higher percentage means a lower price.' : '% de Descuento: Al aprender sobre descuentos en matemáticas, el porcentaje de descuento (% de descuento) es a menudo el tipo más discutido. La idea clave es que un porcentaje más alto significa un precio más bajo.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For example, if an item originally costs \$50 and there is a 20% discount, the discount amount is \$10, so the sale price is \$40. While percentage discounts are frequent, it\'s essential to understand other types of discounts to accurately calculate the total price during sales.' : 'Por ejemplo, si un artículo cuesta originalmente \$50 y hay un descuento del 20%, el monto del descuento es \$10, por lo que el precio de venta es \$40. Aunque los descuentos porcentuales son frecuentes, es esencial comprender otros tipos de descuentos para calcular con precisión el precio total durante las ventas.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? '\$ Off (Dollar Off): Dollar off (\$ off) discounts involve subtracting a specific amount from the total purchase. This type of discount is commonly seen in non-food shopping scenarios.' : '\$ de Descuento: Los descuentos de \$ (dólares) implican restar una cantidad específica de la compra total. Este tipo de descuento se ve comúnmente en escenarios de compras que no son de alimentos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For example, if a store offers \$5 off a purchase of \$25 or more, and a student buys items worth \$30, the final price after the discount would be \$25.' : 'Por ejemplo, si una tienda ofrece \$5 de descuento en una compra de \$25 o más, y un estudiante compra artículos por valor de \$30, el precio final después del descuento sería de \$25.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'BOGO (Buy One Get One): Buy One Get One deals are promotions where buying one item allows you to get another item for free or at a reduced price, such as 50% off. These deals are common in both physical stores and online, especially when purchasing food or clothing.' : 'BOGO (Compra Uno y Llévate Otro): Las ofertas de Compra Uno y Llévate Otro son promociones en las que al comprar un artículo se obtiene otro artículo gratis o a un precio reducido, como el 50% de descuento. Estas ofertas son comunes tanto en tiendas físicas como en línea, especialmente al comprar alimentos o ropa.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For example, if you buy one pizza for \$15 and get the second pizza for free, you pay only \$15 for two pizzas. BOGO deals can be engaging for hands-on learning activities.' : 'Por ejemplo, si compras una pizza por \$15 y obtienes la segunda pizza gratis, solo pagas \$15 por dos pizzas. Las ofertas BOGO pueden ser atractivas para actividades de aprendizaje prácticas.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Buy More, Save More: This type of discount encourages spending more to save more.' : 'Compra Más, Ahorra Más: Este tipo de descuento fomenta gastar más para ahorrar más.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For instance, a coupon might offer \$15 off a \$30 purchase. Students need to understand that the discount cannot reduce the purchase price below zero. There may also be tiered discounts, such as 15% off for totals over \$100, 20% off for totals over \$200, and 30% off for totals over \$300. For example, if you spends \$250 and the discount is 20%, the savings would be \$50, making the final price \$200.' : 'Por ejemplo, un cupón puede ofrecer \$15 de descuento en una compra de \$30. Los estudiantes deben entender que el descuento no puede reducir el precio de compra por debajo de cero. También puede haber descuentos escalonados, como el 15% de descuento para totales superiores a \$100, el 20% de descuento para totales superiores a \$200 y el 30% de descuento para totales superiores a \$300. Por ejemplo, si gasta \$250 y el descuento es del 20%, el ahorro sería de \$50, por lo que el precio final sería de \$200.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Site-wide or Specific Discounts: Online shopping often features site-wide discounts, like 15% off everything on a website. However, sometimes discounts apply only to specific categories, such as just jeans or out-of-season clothes.' : 'Descuentos en Todo el Sitio o Específicos: Las compras en línea a menudo presentan descuentos en todo el sitio, como el 15% de descuento en todo en un sitio web. Sin embargo, a veces los descuentos se aplican solo a categorías específicas, como solo jeans o ropa fuera de temporada.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For instance, a website might offer 25% off all electronics but exclude accessories. Additionally, free shipping deals might not apply to international, custom, or large, heavy orders.' : 'Por ejemplo, un sitio web puede ofrecer un 25% de descuento en todos los productos electrónicos, pero excluir los accesorios. Además, las ofertas de envío gratuito pueden no aplicarse a pedidos internacionales, personalizados o grandes y pesados.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Limited Time Only: Some discounts are available only for a limited time or until the items are sold out.' : 'Solo por Tiempo Limitado: Algunos descuentos están disponibles solo por un tiempo limitado o hasta que se agoten los artículos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For example, a sale might offer 50% off winter coats but only for the weekend. Understanding the time frame is crucial for taking advantage of these deals.' : 'Por ejemplo, una oferta puede ofrecer un 50% de descuento en abrigos de invierno, pero solo durante el fin de semana. Comprender el marco de tiempo es crucial para aprovechar estas ofertas.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Exclusions Apply: Discounts often come with exclusions, turning them into real-life word problems.' : 'Se Aplican Exclusiones: Los descuentos a menudo vienen con exclusiones, convirtiéndolos en problemas de palabras de la vida real.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'For example, a sale might limit purchases to ten items per customer or exclude gift cards from the discount. Site-wide sales might not apply to past purchases or require a promo code to access. Additionally, certain deals might be available only to email subscribers or the first 25 customers.' : 'Por ejemplo, una oferta puede limitar las compras a diez artículos por cliente o excluir las tarjetas de regalo del descuento. Las ventas en todo el sitio pueden no aplicarse a compras anteriores o requerir un código promocional para acceder. Además, ciertas ofertas pueden estar disponibles solo para suscriptores de correo electrónico o los primeros 25 clientes.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Summary' : 'Resumen',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'There are different types of discounts, including percentage discounts, fixed amount discounts, BOGO deals, and more.' : 'Existen diferentes tipos de descuentos, incluidos descuentos porcentuales, descuentos de cantidad fija, ofertas BOGO y más.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Understanding how to identify and calculate these discounts can help you save money and make smarter purchasing decisions.' : 'Comprender cómo identificar y calcular estos descuentos puede ayudarte a ahorrar dinero y tomar decisiones de compra más inteligentes.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Various scenarios utilize different types of discounts to attract customers and encourage purchases.' : 'Diversos escenarios utilizan diferentes tipos de descuentos para atraer clientes y fomentar las compras.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Next Steps' : 'Próximos Pasos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'In the next lesson, we will learn how to calculate the discount amount and the sale price for each type of discount.' : 'En la próxima lección, aprenderemos cómo calcular el monto del descuento y el precio de venta para cada tipo de descuento.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
