import 'package:flutter/material.dart';
import 'package:my_cv_app/constants.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("assets/panda.png"),
              ),
              const Text(
                "Panda Jack",
                style: kTitleTextStyle,
              ),
              const Text("Flutter Developer"),
              const SizedBox(height: 15),
              _getListItem("+48 807 777 777"),
              const SizedBox(height: 15),
              _getListItem("email@gmail.com"),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getCVField(
                      title: "Education",
                      fields: ["UCLA, LA, USA", "Kozminski University, Warsaw"],
                    ),
                    _getCVField(
                      title: "Work Experience",
                      fields: ["English Teacher", "Flutter Developer"],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Reuse widget
  Widget _getListItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.email),
          title: Text(
            title,
            style: kSmallTextStyle,
          ),
        ),
      ),
    );
  }

  Widget _getCVField({
    required String title,
    required List<String> fields,
  }) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: kRegularBoldTextStyle,
          ),
          const SizedBox(height: 3),
          // insert list in list
          ...fields.map(
            (field) {
              return Text(
                field,
                textAlign: TextAlign.center,
                style: kRegularTextStyle,
              );
            },
          ),
        ],
      ),
    );
  }
}
