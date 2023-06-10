import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/register_form/register_form_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('registerForm_continue_raisedButton'),
      onPressed: () {
        context
            .read<RegisterFormBloc>()
            .add(const RegisterFormEvent.registerWithEmailAndPasswordPressed());
      },
      child: const Text('DAFTAR'),
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('key_NameInput_textField'),
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Name",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
      ),
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.fullnameChanged(value));
      },
      validator: (_) {
        return context.read<RegisterFormBloc>().state.fullname.value.fold(
              (l) => l.maybeMap(
                shortPassword: (_) => 'Invalid Fullname',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('registerForm_PhoneInput_textField'),
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Phone",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
      ),
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.phoneChanged(value));
      },
      validator: (_) {
        return context.read<RegisterFormBloc>().state.phone.value.fold(
              (l) => l.maybeMap(
                shortPassword: (_) => 'Invalid Phone',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('registerForm_emailInput_textField'),
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.phoneChanged(value));
      },
      validator: (_) {
        return context.read<RegisterFormBloc>().state.phone.value.fold(
              (l) => l.maybeMap(
                shortPassword: (_) => 'Invalid Phone',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('registerForm_passwordInput_textField'),
      // obscureText: !state.password,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
      ),
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.passwordChanged(value));
      },
      validator: (_) {
        return context.read<RegisterFormBloc>().state.password.value.fold(
              (l) => l.maybeMap(
                shortPassword: (_) => 'Invalid Password',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}
