import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const Icon(Icons.abc),
        actions: const [Icon(Icons.abc)],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {},
              child: const Text(
                "Material Button",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton.extended(
              icon: const Icon(
                Icons.add,
              ),
              onPressed: () {},
              label: const Text('navigation'),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              // ignore: avoid_print
              onTap: () => print("hi I am On TAbevent"),
              // ignore: avoid_print
              onDoubleTap: () => print("hi I am Ondouble TAbevent"),
              // ignore: avoid_print
              onLongPress: () => print("hi I am On long press"),
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                color: Colors.amber,
                child: const Text("Zenil"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(),
                );
              },
              label: const Text('Bottomsheet'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Hi I Am Snackbar')));
              },
              child: const Text(
                "show snackbar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
