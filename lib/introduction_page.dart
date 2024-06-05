import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  final bool isEnglish;

  const IntroductionPage({Key? key, required this.isEnglish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80), // Dark background color
      appBar: AppBar(
        title: Text(
          isEnglish ? 'Introduction' : 'Introducción',
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
                builder: (context) => IntroductionPage(isEnglish: !isEnglish),
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
                isEnglish ? 'Introduction to Discounts' : 'Introducción a los Descuentos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Objective: Understand the concept of discounts and recognize their importance in everyday life.' : 'Objetivo: Comprender el concepto de descuentos y reconocer su importancia en la vida cotidiana.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Definition' : 'Definición',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Discount: A reduction in the original price of an item or service. Discounts are usually expressed as a percentage or a fixed amount off the original price.' : 'Descuento: Una reducción en el precio original de un artículo o servicio. Los descuentos generalmente se expresan como un porcentaje o una cantidad fija sobre el precio original.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Purpose of Discounts' : 'Propósito de los Descuentos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Attract Customers: Stores use discounts to draw in customers and increase sales.' : 'Atraer Clientes: Las tiendas usan descuentos para atraer clientes y aumentar las ventas.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Clear Inventory: Discounts help stores sell old stock to make room for new products.' : 'Liquidar Inventario: Los descuentos ayudan a las tiendas a vender existencias antiguas para dar cabida a nuevos productos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Encourage Bulk Buying: Discounts can encourage customers to buy more than they originally intended.' : 'Fomentar Compras al Por Mayor: Los descuentos pueden alentar a los clientes a comprar más de lo que originalmente pretendían.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Examples' : 'Ejemplos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Percentage Discount: A sign showing "20% off all clothing."' : 'Descuento Porcentual: Un cartel que muestra "20% de descuento en toda la ropa".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Fixed Amount Discount: A label saying "\$5 off any purchase over \$25."' : 'Descuento de Cantidad Fija: Una etiqueta que dice "\$5 de descuento en cualquier compra superior a \$25".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Buy One-Get One (BOGO): A promotion like "Buy one pizza, get the second one free."' : 'Compra Uno y Obtén Otro (BOGO): Una promoción como "Compra una pizza y obtén la segunda gratis".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Real-Life Applications' : 'Aplicaciones en la Vida Real',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Shopping: Knowing how to calculate discounts helps you make better purchasing decisions and save money.' : 'Compras: Saber cómo calcular los descuentos te ayuda a tomar mejores decisiones de compra y ahorrar dinero.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Budgeting: Understanding discounts can help manage personal or family budgets more effectively.' : 'Presupuesto: Comprender los descuentos puede ayudar a gestionar los presupuestos personales o familiares de manera más efectiva.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Smart Consumer: Being aware of discounts helps you recognize good deals and avoid overspending.' : 'Consumidor Inteligente: Estar al tanto de los descuentos te ayuda a reconocer buenas ofertas y evitar gastar de más.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Summary' : 'Resumen',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'A discount is a reduction in the original price of an item.' : 'Un descuento es una reducción en el precio original de un artículo.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Discounts are used to attract customers, clear inventory, and encourage bulk buying.' : 'Los descuentos se utilizan para atraer clientes, liquidar inventarios y fomentar las compras al por mayor.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                isEnglish ? 'Understanding discounts is important for making smart purchasing decisions and managing money effectively.' : 'Comprender los descuentos es importante para tomar decisiones de compra inteligentes y gestionar el dinero de manera efectiva.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Next Steps' : 'Próximos Pasos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'In the next lesson, we will learn about different types of discounts and how to identify them.' : 'En la próxima lección, aprenderemos sobre los diferentes tipos de descuentos y cómo identificarlos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
