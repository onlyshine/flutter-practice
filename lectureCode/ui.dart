import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Hey, selena",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                )),
                            Text(
                              "Welcome back",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 22,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text('Total Balance',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('\$5 194 482',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: 'Transfer',
                            bgColor: Color(0xFFF1B33B),
                            textColor: Colors.black),
                        Button(
                            text: 'Request',
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Wallets",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            )),
                        Text("View All",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: "EUR",
                      amount: '6 428',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const CurrencyCard(
                        name: 'Bitcoin',
                        code: "BTC",
                        amount: '9 765',
                        icon: Icons.currency_bitcoin_rounded,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        name: 'Dollar',
                        code: "USD",
                        amount: '6 428',
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
