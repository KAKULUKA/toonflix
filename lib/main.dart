import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        'To The Worlds',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$435000000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    bgColor: Colors.amber,
                    text: 'Transfer',
                    textColor: Colors.black,
                  ),
                  Button(
                    bgColor: Color.fromARGB(255, 67, 67, 67),
                    text: 'Request',
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '3 334',
                      icon: Icons.euro_symbol_rounded,
                      isInverted: false,
                      offsetY: 0,
                    ),
                    CurrencyCard(
                      name: 'Bitcoin',
                      code: 'EBTCUR',
                      amount: '344 334',
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      offsetY: -20,
                    ),
                    CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '9 334',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      offsetY: -40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const App());
}
