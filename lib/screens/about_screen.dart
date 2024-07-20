import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/officer.jpg'), // Asegúrate de tener esta imagen en la carpeta assets
            ),
            const SizedBox(height: 16.0),
            const Text('Nombre: Edyson Alexander'),
            const Text('Apellido: Mendez De La Paz'),
            const Text('Matrícula: seguridad_2022-1009'),
            const SizedBox(height: 16.0),
            const Text(
              'Reflexión: La seguridad es lo mas importante y debemos tener nuestros criterios bien claros.',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
