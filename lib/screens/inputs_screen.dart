import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jonatan',
      'last_name': 'Elizalde',
      'email': 'jonatanelizaldegomez@google.com',
      'password': '123456',
      'role': 'Administrador'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                        labelText: 'Nombre',
                        hintText: 'Nombre del usuario',
                        formProperty: 'first_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Apellido',
                        hintText: 'Apellido del usuario',
                        formProperty: 'last_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Correo',
                        hintText: 'Correo del usuario',
                        keyboardType: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Contraseña',
                        hintText: 'Contraseña del usuario',
                        obscureText: true,
                        formProperty: 'password',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                        value: 'Administrador',
                        items: const [
                          DropdownMenuItem(
                              value: 'Administrador',
                              child: Text('Administrador')),
                          DropdownMenuItem(
                              value: 'Usuario', child: Text('Usuario')),
                          DropdownMenuItem(
                              value: 'Desarrollador',
                              child: Text('Desarrollador')),
                          DropdownMenuItem(
                              value: 'Distribuidor',
                              child: Text('Distribuidor')),
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Administrador';
                        }),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no válido');
                          return;
                        }

                        //* imprimir valores del formulario
                        print(formValues);
                      },
                    ),
                  ],
                ),
              )),
        ));
  }
}
