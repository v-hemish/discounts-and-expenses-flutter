import 'package:flutter/material.dart';

class ApplyingDiscountsPage extends StatelessWidget {
  final bool isEnglish;

  const ApplyingDiscountsPage({Key? key, required this.isEnglish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80), // Dark background color
      appBar: AppBar(
        title: Text(
          isEnglish ? 'Applying Discounts' : 'Aplicar Descuentos',
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
                builder: (context) => ApplyingDiscountsPage(isEnglish: !isEnglish),
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
                isEnglish ? 'Objective: Learn how to calculate the discount amount and sale price for different types of discounts, including fixed amount discounts and BOGO deals.' : 'Objetivo: Aprender a calcular el monto del descuento y el precio de venta para diferentes tipos de descuentos, incluidos descuentos de cantidad fija y ofertas BOGO.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Fixed Amount Discounts' : 'Descuentos de Cantidad Fija',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Definition: A fixed amount discount subtracts a specific dollar amount from the original price.\nFormula: Sale Price = Original Price - Fixed Discount Amount' : 'Definición: Un descuento de cantidad fija resta una cantidad específica en dólares del precio original.\nFórmula: Precio de Venta = Precio Original - Monto del Descuento Fijo',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation' : 'Cálculo de Ejemplo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price: \$75\nFixed Discount Amount: \$10\n\nCalculation:\nSale Price = \$75 - \$10\nSale Price = \$65' : 'Precio Original: \$75\nMonto del Descuento Fijo: \$10\n\nCálculo:\nPrecio de Venta = \$75 - \$10\nPrecio de Venta = \$65',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Practice Problem' : 'Problema de Práctica',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price: \$40\nFixed Discount Amount: \$5\nCalculate Sale Price: \$40 - \$5 = \$35' : 'Precio Original: \$40\nMonto del Descuento Fijo: \$5\nCalcular el Precio de Venta: \$40 - \$5 = \$35',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Buy One, Get One (BOGO) Discounts' : 'Descuentos de Compra Uno y Obtén Otro (BOGO)',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Definition: BOGO deals allow customers to buy one item and get another item for free or at a reduced price.' : 'Definición: Las ofertas BOGO permiten a los clientes comprar un artículo y obtener otro artículo gratis o a un precio reducido.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation for BOGO Free' : 'Cálculo de Ejemplo para BOGO Gratis',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price of One Item: \$30\nBOGO Deal: Buy one, get one free\n\nCalculation:\nTotal Price for Two Items = \$30' : 'Precio Original de Un Artículo: \$30\nOferta BOGO: Compra uno, obtén uno gratis\n\nCálculo:\nPrecio Total por Dos Artículos = \$30',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation for BOGO 50% Off' : 'Cálculo de Ejemplo para BOGO 50% de Descuento',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price of One Item: \$30\nBOGO Deal: Buy one, get one 50% off\n\nCalculation:\nPrice for First Item = \$30\nPrice for Second Item = \$30 x 50% / 100 = \$15\nTotal Price for Two Items = \$30 + \$15 = \$45' : 'Precio Original de Un Artículo: \$30\nOferta BOGO: Compra uno, obtén uno al 50% de descuento\n\nCálculo:\nPrecio del Primer Artículo = \$30\nPrecio del Segundo Artículo = \$30 x 50% / 100 = \$15\nPrecio Total por Dos Artículos = \$30 + \$15 = \$45',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Practice Problem' : 'Problema de Práctica',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price of One Item: \$20\nBOGO Deal: Buy one, get one 50% off\nCalculate Total Price for Two Items: \$20 + (\$20 x 50% / 100) = \$20 + \$10 = \$30' : 'Precio Original de Un Artículo: \$20\nOferta BOGO: Compra uno, obtén uno al 50% de descuento\nCalcular el Precio Total por Dos Artículos: \$20 + (\$20 x 50% / 100) = \$20 + \$10 = \$30',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Combined Discounts' : 'Descuentos Combinados',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Sometimes discounts are combined, such as a percentage discount on an already discounted BOGO deal.' : 'A veces, los descuentos se combinan, como un descuento porcentual en una oferta BOGO ya descontada.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Example Calculation' : 'Cálculo de Ejemplo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Original Price of One Item: \$50\nBOGO Deal: Buy one, get one 50% off\nAdditional Percentage Discount: 10%\n\nCalculation:\nPrice for First Item = \$50\nPrice for Second Item = \$50 x 50% / 100 = \$25\nCombined Price Before Additional Discount = \$50 + \$25 = \$75\nAdditional Discount Amount = \$75 x 10% / 100 = \$7.50\nFinal Sale Price = \$75 - \$7.50 = \$67.50' : 'Precio Original de Un Artículo: \$50\nOferta BOGO: Compra uno, obtén uno al 50% de descuento\nDescuento Porcentual Adicional: 10%\n\nCálculo:\nPrecio del Primer Artículo = \$50\nPrecio del Segundo Artículo = \$50 x 50% / 100 = \$25\nPrecio Combinado Antes del Descuento Adicional = \$50 + \$25 = \$75\nMonto del Descuento Adicional = \$75 x 10% / 100 = \$7.50\nPrecio de Venta Final = \$75 - \$7.50 = \$67.50',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Guided Practice' : 'Práctica Guiada',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Problem 1: Fixed Amount Discount\n\nOriginal Price: \$100\nFixed Discount Amount: \$20\nCalculate Sale Price: \$100 - \$20 = \$80' : 'Problema 1: Descuento de Cantidad Fija\n\nPrecio Original: \$100\nMonto del Descuento Fijo: \$20\nCalcular el Precio de Venta: \$100 - \$20 = \$80',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Problem 2: BOGO Free\n\nOriginal Price of One Item: \$15\nBOGO Deal: Buy one, get one free\nCalculate Total Price for Two Items: \$15' : 'Problema 2: BOGO Gratis\n\nPrecio Original de Un Artículo: \$15\nOferta BOGO: Compra uno, obtén uno gratis\nCalcular el Precio Total por Dos Artículos: \$15',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Problem 3: BOGO 50% Off\n\nOriginal Price of One Item: \$40\nBOGO Deal: Buy one, get one 50% off\nCalculate Total Price for Two Items: \$40 + (\$40 x 50% / 100) = \$40 + \$20 = \$60' : 'Problema 3: BOGO 50% de Descuento\n\nPrecio Original de Un Artículo: \$40\nOferta BOGO: Compra uno, obtén uno al 50% de descuento\nCalcular el Precio Total por Dos Artículos: \$40 + (\$40 x 50% / 100) = \$40 + \$20 = \$60',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Problem 4: Combined Discount\n\nOriginal Price of One Item: \$80\nBOGO Deal: Buy one, get one 50% off\nAdditional Percentage Discount: 20%\nCalculate Final Sale Price:\nPrice for First Item = \$80\nPrice for Second Item = \$80 x 50% / 100 = \$40\nCombined Price Before Additional Discount = \$80 + \$40 = \$120\nAdditional Discount Amount = \$120 x 20% / 100 = \$24\nFinal Sale Price = \$120 - \$24 = \$96' : 'Problema 4: Descuento Combinado\n\nPrecio Original de Un Artículo: \$80\nOferta BOGO: Compra uno, obtén uno al 50% de descuento\nDescuento Porcentual Adicional: 20%\nCalcular el Precio de Venta Final:\nPrecio del Primer Artículo = \$80\nPrecio del Segundo Artículo = \$80 x 50% / 100 = \$40\nPrecio Combinado Antes del Descuento Adicional = \$80 + \$40 = \$120\nMonto del Descuento Adicional = \$120 x 20% / 100 = \$24\nPrecio de Venta Final = \$120 - \$24 = \$96',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Key Points' : 'Puntos Clave',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'Fixed Amount Discount Formula: Sale Price = Original Price - Fixed Discount Amount\nBOGO Calculation: Total Price = Price of First Item + (Price of Second Item x Discount Percentage / 100)\nCombined Discount: Apply the percentage discount to the total price after BOGO or other discounts.' : 'Fórmula de Descuento de Cantidad Fija: Precio de Venta = Precio Original - Monto del Descuento Fijo\nCálculo BOGO: Precio Total = Precio del Primer Artículo + (Precio del Segundo Artículo x Porcentaje de Descuento / 100)\nDescuento Combinado: Aplicar el descuento porcentual al precio total después de BOGO u otros descuentos.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                isEnglish ? 'Next Steps' : 'Próximos Pasos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 10),
              Text(
                isEnglish ? 'You are now fully equipped to calculate discounts!' : '¡Ahora estás completamente equipado para calcular descuentos!',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
