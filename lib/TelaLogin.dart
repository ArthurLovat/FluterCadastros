import 'package:cadastro_detalhado/CadastroCliente.dart';
import 'package:cadastro_detalhado/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();
  late bool logado;
  int apertado = 0;
  String mensagemErro = '';
  bool passwordVisible = false;


  bool validar(TextEditingController login, TextEditingController senha){
    if (login.text == "admin" && senha.text == "admin"){
      logado = true;
      Navigator.of(context).push(MaterialPageRoute(builder: (c) => Abas()));
      return logado;

    }
    else {
      logado = false;
      return logado;
    }
  }
  void limparCampos(){
    login.text = "";
    senha.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de login",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        toolbarHeight: 40,
      ),
      body: Center(
          child: Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child:
                    Padding(padding: EdgeInsets.all(10), child:
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: login,
                      decoration: InputDecoration(
                          labelText: "Digite seu Usuário"
                      ),
                    ),
                    ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child:
                    Padding(padding: EdgeInsets.all(10),child:
                    TextField(
                      obscureText: passwordVisible, controller: senha,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Digite sua Senha",
                          hintText: "Senha",
                          helperText: "A senha deve conter Caracteres",
                          suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                            onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                            },
                      ),
                      )
                    ),
                    )
                    )
                  ],
                ),
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
                          setState(() {
                            if(validar(login, senha)){
                              mensagemErro = '';
                              apertado = 1;

                            }
                            else{
                              mensagemErro = "Login ou senha inválidos";
                            }
                          });
                        },

                        child: const Text('Logar',
                          style: TextStyle(color: Colors.white),
                        )
                    ),
                    )
                    )
                  ],
                ),
                Center(
                  child: GestureDetector(
                    child: Text("Não possue Conta? Cadastre-se" , style: TextStyle(
                        color: Colors.black
                    ),),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (c) => Abas()   ));
                    },
                  ),
                ),
                if (mensagemErro.isNotEmpty)
                  Padding(padding: EdgeInsets.all(20),
                    child: Text(mensagemErro,
                        style: TextStyle(color: Colors.red)),)
                else if (apertado == 1)
                  Padding(padding: EdgeInsets.all(20),
                    child: Text("Logado com sucesso!",
                        style: TextStyle(color: Colors.green)),)
              ],
            ),
          )
      ),
    );
  }
}