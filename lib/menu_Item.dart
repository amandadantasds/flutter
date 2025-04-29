import 'package:layout/pizza_data.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza; // obrigatório. Cada item precisa receber uma pizza específica.
  const MenuItem({super.key, required this.pizza}); //construtor, tem que passar uma chave  e uma pizza

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, //sombra
      child: Padding( //espaço interno ao redor do card
        padding: EdgeInsets.all(12), //12 pixels de padding ao redor do card todo
        child: (Row(
          children: [
            ColorFiltered( 
              colorFilter: pizza.soldOut
                  ? ColorFilter.mode(Colors.grey, BlendMode.saturation)//desbota a imagem se a pizza estiver com soldout true
                  : ColorFilter.mode(Colors.transparent, BlendMode.saturation),//se não, deixa normal
              child: Image.asset(
                "images/${pizza.photoName}",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox( //espaço de 12 pixels na horizontal 
              width: 12,
            ),
            Expanded( //ocupa todo o espaço da linha
              child: Column(//agrupa os elementos m coluna
                crossAxisAlignment: CrossAxisAlignment.start, //alinha os textos a esquerda
                children: [
                  Text(
                    pizza.name, //pega o nome da pizza
                    style: TextStyle(
                      fontWeight: FontWeight.bold, //deixa a fonte em negrito
                      fontSize: 18, //tamanho 18 para o texto
                    ),
                  ),
                  Text( 
                    pizza.ingredients, //exibe os ingredientes
                    style: TextStyle(fontSize: 16, color: Colors.black87), //tamanho 16 em preto
                  ),
                  Text(
                    pizza.soldOut ? "sold out" : "\$${pizza.price}", //se a pizza estiver sold out true, exibe sold out, se não exibe o preço da pizza
                    style: TextStyle(
                        fontSize: 16, //fonte 16, texto preto e grossura da fonte 500
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}