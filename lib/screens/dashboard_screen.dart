import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xffd41b15),
        child: Icon(
          Icons.qr_code_2_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          tapBar(),
          location(),
          const Gap(20),
          searchBar(),
          const Gap(20),
          categories(),
          const Gap(20),
          cardsView()
        ]),
      ),
    );
  }

  Widget tapBar() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffffc500),
          radius: 24,
          child: Image.asset("assets/images/Logo.png"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¡Hola!",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffb2bfc6)),
            ),
            Text(
              "Josue Barrios 0438",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff18252c)),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffd41b15),
          child: Image.asset(
            "assets/images/Noti.png",
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffd41b15),
          size: 16,
        ),
        Gap(6),
        Text(
          "Cd.Juárez, Chihuahua",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xffb2bfc6)),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffdde2e5),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/images/Lupa.png"),
            suffixIcon: Image.asset("assets/images/Filtro.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
            border: InputBorder.none,
            fillColor: const Color(0xffdde2e5),
            filled: true,
            hintText: "¿Algún producto?",
            hintStyle: const TextStyle(fontSize: 14, color: Colors.blueGrey)),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Nuestros Productos",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Gap(20),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xffd41b15)),
                child: const Center(
                    child: Text("Todos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Sabritas",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Cheetos",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Flaming Hot",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Ruffles",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.71,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfff4dcff),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffb370e8),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/RecetaCruj.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Receta Crujiente",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffb370e8),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$18",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xffb370e8),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffb4fbbd),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff1b9d1b),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Ruffles.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Ruffles",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff1b9d1b),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$15",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff1b9d1b),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfff1eec6),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfff2a908),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Sabritas.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Sabritas",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xfff2a908),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$12",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xfff2a908),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffefc6af),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffde581b),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Cheetos.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Cheetos",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffde581b),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xffde581b),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfffdc8c8),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffd22929),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Chicharron.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Chicharron",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffd22929),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$20",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xffd22929),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffacccfd),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff0f6192),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Paketaxo.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Paketaxo",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff0f6192),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$25",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff0f6192),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffffc2e1),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffc3336e),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Habanero.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Habanero",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffc3336e),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$15",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xffc3336e),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfff46f6f),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffb91a1a),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Doritos.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Doritos",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffb91a1a),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$18",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xffb91a1a),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
