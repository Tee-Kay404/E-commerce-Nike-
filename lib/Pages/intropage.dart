import 'package:ecommerce_app/Pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                // logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                      'assets/images/Nike-Logo-Free-PNG-Image.png',
                      height: 200),
                ),

                const SizedBox(height: 40),
                // title
                Text(
                  'Just Do It',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 18),

                // subtitle
                Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 18),

                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Center(
                          child: Text('Shop Now',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
