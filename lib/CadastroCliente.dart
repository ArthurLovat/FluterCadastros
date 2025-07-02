import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({super.key});

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
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
                        labelText: "Nome"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "RG"
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
                        labelText: "CPF"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                    keyboardType: TextInputType.text,
                    //controller:
                    decoration: InputDecoration(
                        labelText: "Data de Nascimento"
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
                        labelText: "Data de Nascimento"
                    ),
                  ),)
                  ),
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
                        labelText: "Cidade"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                      keyboardType: TextInputType.text,
                      //controller:
                      decoration: InputDecoration(
                          labelText: "Selecione o Estado"
                      )
                  ),
                  )
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
                        labelText: "Cep"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                      keyboardType: TextInputType.text,
                      //controller:
                      decoration: InputDecoration(
                          labelText: "Email"
                      )
                  ),
                  )
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
                        labelText: "Email"
                    ),
                  ),)
                  ),
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
                        labelText: "Telefone 1"
                    ),
                  ),)
                  ),
                  Expanded(child: Padding(padding: EdgeInsets.all(20), child:
                  TextField(
                      keyboardType: TextInputType.text,
                      //controller:
                      decoration: InputDecoration(
                          labelText: "Telefone 2"
                      )
                  ),
                  )
                  )
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
