import 'package:layout/menu_Item.dart';
import 'package:layout/pizza_data.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) { //constrói a tela
    return Scaffold( 
      appBar: AppBar( //menu
        title: Text("Pizza menu"), 
      ),
      body: Column( //monta uma coluna
        children: [
          Expanded( //ocupa todo o espaço disponível dentro do column
            child: SingleChildScrollView( //rola o conteúdo para baixo
              child: Column(// une os cards
                children:
                    pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(), //monsta a lista de cards de acordo com o pizzaData
              ),
            ),
          ),
          if (isOpen()) //se a função is open retorna true cria o botão de order now
            Padding(
              padding: const EdgeInsets.all(12.0), 
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Order now!"),
              ),
            )
        ],
      ),
    );
  }

  bool isOpen() { //verifica se a hora atual está entre o intervalo solicitado 
    var horaInicial = 19;
    var horaFinal = 23;
    var horaAtual = DateTime.now().hour;

    return horaAtual >= horaInicial && horaAtual < horaFinal;
  }

  List<MenuItem> _buildItems() { //faz a mesma coisa que a exibição dos cards lá em cima
    // Lista Pizza => Lista MenuItem
    List<MenuItem> items = [];
    for (var pizza in pizzaData) {
      items.add(MenuItem(pizza: pizza));
    }
    return items;
  }
}