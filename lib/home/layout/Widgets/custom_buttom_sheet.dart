import 'package:flutter/material.dart';
class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent[700],
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.near_me_rounded,
                    color: Colors.white,
                  )),
              const Text(
                "Named_entity ",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.near_me_rounded,
                    color: Colors.white,
                  )),
              const Text(
                "S arabic",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),

          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.near_me_rounded,
                    color: Colors.white,
                  )),
              const Text(
                "S English",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 10,)


        ],
      ),
    );
  }
}
