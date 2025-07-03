import 'package:cadastro_detalhado/CadastroCliente.dart';
import 'package:cadastro_detalhado/CadastroProduto.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MenuBar"),
      ),
      drawer: Drawer(child:
        ListView(
          children: [
             DrawerHeader(
                 child: Text("Header"),
               decoration: BoxDecoration(
                 color: Colors.blue,
                 image: DecorationImage(
                   image: AssetImage("imagem/perfil.jpg"),
                   fit: BoxFit.cover
                 )
               ),
             ),
            ListTile(
              title: Text("Cadastro de produtos"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroProduto()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Cadastro de cliente"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroCliente()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Cadastro de produto"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroProduto()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Cadastro"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroProduto()));
              },
            ),
            Divider(),
            ExpansionTile(
              title: Text("Cadastros"),
              children: <Widget>[
                ListTile(
                  title: Text("Cadastro Cliente"),
                  onTap: () {
                    // ação para cadastro de cliente
                  },
                ),
                ListTile(
                  title: Text("Cadastro Produto"),
                  onTap: () {
                    // ação para cadastro de produto
                  },
                ),
                ListTile(
                  title: Text("Cadastro Fornecedor"),
                  onTap: () {
                    // ação para cadastro de fornecedor
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
