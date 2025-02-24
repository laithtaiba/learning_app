import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.fromLTRB(30, 70, 10, 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Sort by",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27)),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 9.0),
              child: Text("Rating",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
              const SizedBox(
                width: 3,
              ),
              const Text("Up to 3", style: TextStyle(fontSize: 17)),
            ]),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("Up to 4", style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("Up to 5", style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("Up to 5", style: TextStyle(fontSize: 17))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 9.0),
              child: Text("Level",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("All Levels", style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("Beginner", style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.circle_outlined)),
                const SizedBox(
                  width: 3,
                ),
                const Text("Advanced", style: TextStyle(fontSize: 17))
              ],
            ),
          ])),
    );
  }
}
