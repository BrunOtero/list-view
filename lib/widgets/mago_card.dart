import 'package:flutter/material.dart';
import 'package:myapp/models/mago.dart'; // Importe o modelo Mago

class MagoCard extends StatelessWidget {
  final Mago mago;

  const MagoCard({super.key, required this.mago});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mago.nome,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                const Icon(Icons.person_outline, color: Colors.grey),
                const SizedBox(width: 8.0),
                Text('Idade: ${mago.idade}'),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.star_border, color: Colors.amber),
                const SizedBox(width: 8.0),
                Text('Nível: ${mago.nivelMagico}'),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.lightbulb_outline, color: Colors.yellow),
                const SizedBox(width: 8.0),
                Text('Inteligência: ${mago.inteligencia.toStringAsFixed(1)}'),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.local_drink_outlined, color: Colors.blue),
                const SizedBox(width: 8.0),
                Text('Mana: ${mago.mana.toStringAsFixed(0)}'),
              ],
            ),
            const SizedBox(height: 12.0),
            const Text('Afinidades:', style: TextStyle(fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('🔥 ${mago.afinidadeFogo}'),
                  backgroundColor: Colors.red[100],
                ),
                Chip(
                  label: Text('💧 ${mago.afinidadeAgua}'),
                  backgroundColor: Colors.blue[100],
                ),
                Chip(
                  label: Text('🌱 ${mago.afinidadeTerra}'),
                  backgroundColor: Colors.green[100],
                ),
                Chip(
                  label: Text('💨 ${mago.afinidadeAr}'),
                  backgroundColor: Colors.grey[200],
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            const Text('Feitiços:', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              title: Text('1: ${mago.feitico1}'),
            ),
            ListTile(
              title: Text('2: ${mago.feitico2}'),
            ),
            ListTile(
              title: Text('3: ${mago.feitico3}'),
            ),
          ],
        ),
      ),
    );
  }
}