import 'package:flutter/material.dart';

class CalculatingDiscountsPage extends StatelessWidget {
  final bool isEnglish;

  const CalculatingDiscountsPage({Key? key, required this.isEnglish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80), // Dark background color
      appBar: AppBar(
        title: Text(
          isEnglish ? 'Calculating Discounts' : 'Calcular Descuentos',
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
                builder: (context) => CalculatingDiscountsPage(isEnglish: !isEnglish),
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
                isEnglish ? 'Objective: Learn how to calculate the discount amount and the sale price using percentage discounts.' : 'Objetivo: Aprender a calcular el monto del descuento y el precio de venta utilizando descuentos porcentuales.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Formula for Discount Amount' : 'Fórmula para el Monto del Descuento',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Discount Amount = (Original Price) x (Discount Percentage) / 100' : 'Monto del Descuento = (Precio Original) x (Porcentaje de Descuento) / 100',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Explanation: The discount amount is found by multiplying the original price by the discount percentage and then dividing by 100.' : 'Explicación: El monto del descuento se encuentra multiplicando el precio original por el porcentaje de descuento y luego dividiendo por 100.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation' : 'Cálculo de Ejemplo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price: \$50\nDiscount Percentage: 20%\nCalculation:\nDiscount Amount = \$50 x 20 / 100\nDiscount Amount = \$10' : 'Precio Original: \$50\nPorcentaje de Descuento: 20%\nCálculo:\nMonto del Descuento = \$50 x 20 / 100\nMonto del Descuento = \$10',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Formula for Sale Price' : 'Fórmula para el Precio de Venta',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Sale Price = Original Price - Discount Amount' : 'Precio de Venta = Precio Original - Monto del Descuento',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Explanation: The sale price is found by subtracting the discount amount from the original price.' : 'Explicación: El precio de venta se encuentra restando el monto del descuento del precio original.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation' : 'Cálculo de Ejemplo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price: \$50\nDiscount Amount: \$10\nCalculation:\nSale Price = \$50 - \$10\nSale Price = \$40' : 'Precio Original: \$50\nMonto del Descuento: \$10\nCálculo:\nPrecio de Venta = \$50 - \$10\nPrecio de Venta = \$40',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Step-by-Step Example' : 'Ejemplo Paso a Paso',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price: \$80\nDiscount Percentage: 25%\n\nStep 1: Calculate Discount Amount\nDiscount Amount = \$80 x 25 / 100\nDiscount Amount = \$20\n\nStep 2: Calculate Sale Price\nSale Price = \$80 - \$20\nSale Price = \$60' : 'Precio Original: \$80\nPorcentaje de Descuento: 25%\n\nPaso 1: Calcular el Monto del Descuento\nMonto del Descuento = \$80 x 25 / 100\nMonto del Descuento = \$20\n\nPaso 2: Calcular el Precio de Venta\nPrecio de Venta = \$80 - \$20\nPrecio de Venta = \$60',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Summary' : 'Resumen',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Discount Amount = (Original Price) x (Discount Percentage) / 100\nSale Price = Original Price - Discount Amount' : 'Monto del Descuento = (Precio Original) x (Porcentaje de Descuento) / 100\nPrecio de Venta = Precio Original - Monto del Descuento',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Next Steps' : 'Próximos Pasos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'In the next lesson, we will learn how to apply different types of discounts in real life scenarios and also go through some practice problems.' : 'En la próxima lección, aprenderemos cómo aplicar diferentes tipos de descuentos en escenarios de la vida real y también resolveremos algunos problemas prácticos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
