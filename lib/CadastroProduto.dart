import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {

  bool logarCadastrar = false;

  String? itemdesvalor = null;

  static const itemsvalor = <String>["Metal" , "Polimero"];

  List<DropdownMenuItem<String>> meuarray = itemsvalor.map((e) =>
      DropdownMenuItem(
          value: e,
          child: Text(e)
      )
  ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Nome Do Produto"
                    ),
                  ),)
                  )
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Codigo do Produto"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Quantidade"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                      labelText: "Preço"
                    ),
                  ),)
                  )
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Material"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Peso"
                    ),
                  ),)
                  ),
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                    DropdownButton(
                      hint: Text("Selecione"),
                      items: meuarray,
                      isExpanded: true,
                      value: itemdesvalor,
                      onChanged:(e) {
                        setState(() {
                          itemdesvalor = e.toString();
                        });
                      },
                    ),
                    )
                  )
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                    SwitchListTile(
                      title: Text("Exibir no catálogo o produto"),
                        value: logarCadastrar,
                        onChanged: (bool valor) {
                          setState(() {
                            logarCadastrar = valor;
                          });
                        } )
                    ,)
                  ),
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Expanded(child:
                  Padding(padding: EdgeInsets.all(10),child:
                  OutlinedButton( //fonte: https://blog.formacao.dev/botoes-no-flutter/
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.lightBlue),
                          backgroundColor: Colors.lightBlue,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                      ),
                      onPressed: () {
                        setState(() {});
                      },

                      child: const Text('Cadastro Cliente',
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                  )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
