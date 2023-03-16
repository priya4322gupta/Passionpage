import 'package:flutter/material.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    double height = mediaQuery.size.height - mediaQuery.padding.top;
    double width = mediaQuery.size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.17,
              child: const NavigationBar(),
            ),
            SizedBox(
              height: height * 0.68,
              child: const PassionList(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: height * 0.07,
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: height * 0.04),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          label: const Text("Finish"),
          onPressed: () {
            print("Button is pressed.");
          },
        ),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, right: 5, left: 5),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 4, right: 4, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(100, 100, 100, 1),
                      ),
                      height: 10,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 4, right: 4, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(100, 100, 100, 1),
                      ),
                      height: 10,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 4, right: 4, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(100, 100, 100, 1),
                      ),
                      height: 10,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 4, right: 4, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(100, 100, 100, 1),
                      ),
                      height: 10,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 4, right: 4, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(100, 100, 100, 1),
                      ),
                      height: 10,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                print('Back button pressed');
              },
            ),
            const Center(
              child: Text(
                "Choose Your Interests/Passions",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class PassionList extends StatefulWidget {
  const PassionList({super.key});

  @override
  State<PassionList> createState() => _PassionListState();
}

class _PassionListState extends State<PassionList> {
  final List<String> passions = [
    'AI/ ML',
    'Anime',
    'App dev',
    'Art',
    'AR/ VR',
    'Astronomy',
    'Blockchain',
    'Coding',
    'Commerce',
    'Competitve Progamming',
    'Content creation',
    'Crypto',
    'Cyber security',
    'Dao',
    'English practice',
    'Entrepreneurship',
    'Film/ TV',
    'Fitness',
    'Freelancing',
    'Full time jobs',
    'Gaming',
    'Graphic design',
    'Hackathons',
  ];

  List<String> user_hobbies = [];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 20,
              children: passions.map((passion) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (user_hobbies.contains(passion)) {
                        user_hobbies.remove(passion);
                      } else {
                        user_hobbies.add(passion);
                      }
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                      color: user_hobbies.contains(passion)
                          ? const Color.fromARGB(255, 104, 170, 224)
                          : const Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Text(
                      passion,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
