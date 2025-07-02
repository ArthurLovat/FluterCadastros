import 'package:cadastro_detalhado/Cadastro.dart';
import 'package:cadastro_detalhado/CadastroCliente.dart';
import 'package:cadastro_detalhado/CadastroFornecedor.dart';
import 'package:cadastro_detalhado/CadastroProduto.dart';
import 'package:cadastro_detalhado/TelaLogin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TelaLogin(),
    );
  }
}

class Abas extends StatefulWidget {
  const Abas({super.key});

  @override
  State<Abas> createState() => _AbasState();
}

class _AbasState extends State<Abas> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Abas", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue,
        bottom: TabBar(
            controller: _tabController,
            tabs: [
          Tab(
            text: "Cadastro de Clientes",
            icon: Icon(Icons.ac_unit_sharp),
          ),
          Tab(
            text: "Cadastro de Fornecedores",
            icon: Icon(Icons.abc_rounded),
          )
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CadastroCliente(),
          CadastroFornecedor(),
        ]
      ),
    );
  }
}
