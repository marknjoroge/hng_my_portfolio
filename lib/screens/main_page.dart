import 'package:flutter/material.dart';
import 'package:hng_my_portfolio/screens/web_page.dart';
import 'package:hng_my_portfolio/utils/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPagePaddingWithInsets,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: DecoratedBox(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kPagePadding * 3),
                RichText(
                  text: TextSpan(
                    text: 'Hi. I\'m\n',
                    style: const TextStyle(
                      height: 1.8,
                      color: Colors.black,
                      fontFamily: 'ComfortaaBold',
                    ),
                    children: [
                      TextSpan(
                        text: "Mark Njoroge, ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const TextSpan(text: "a mobile intern at "),
                      TextSpan(
                        text: "HNG's mobile intern ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const TextSpan(text: "2023 program. "),
                    ],
                  ),
                ),
                const SizedBox(height: kPagePadding * 8),
                const Text('Here is my Slack profile card.'),
                const SizedBox(height: kPagePadding * 2),
                Container(
                  padding: kPagePaddingWithInsets,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    border: Border.all(
                      color: kSlackPrimary,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: kSecondaryColor,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/me.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: kPagePadding * 2),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.4,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('0xea31c0 1️⃣'),
                                Text(
                                  'Mark Njoroge',
                                  style: TextStyle(
                                    fontFamily: 'ComfortaaLight',
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const WebPage()));
                              },
                              child: Container(
                                padding: kPagePaddingWithInsets,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  border: Border.all(color: kSlackGreen, width: 2)
                                ),
                                child: const Center(
                                  child: Text(
                                    'View Github Profile',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
