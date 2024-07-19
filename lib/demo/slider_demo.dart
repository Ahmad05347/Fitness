import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: PageView.builder(
                    itemCount: 4,
                    controller: PageController(
                      initialPage: 1,
                      viewportFraction: 0.7,
                    ),
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
