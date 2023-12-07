import 'package:flutter/material.dart';
import '../../common/utils/custom_button.dart';

import '../../common/styles/app_colors.dart';
import '../../common/utils/custom_extension.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String name = '';
  String email = '';
  String password = '';

  String? nameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Введите имя обязательна!';
    } else {
      name = value;
      return null;
    }
  }

  String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Электронная почта обязательна!';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Недействительный адрес электронной почты!';
    } else {
      email = value;
      return null;
    }
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Пароль обязателен!';
    } else if (value.length < 8) {
      return 'Минимум 8 символов!';
    } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Минимум 1 заглавная буква!';
    } else if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Минимум 1 строчная буква!';
    } else if (!RegExp(r'\d').hasMatch(value)) {
      return 'Минимум 1 цифра!';
    } else {
      password = value;
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          'Регистрация',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: AppColors.titleColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 140),
                Text(
                  ' ИМЯ',
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.titleColor,
                    height: 2.3,
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: AppColors.grey30,
                    ),
                    child: TextFormField(
                      validator: (value) => nameValidator(value),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 11, left: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  ' ЭЛЕКТРОННАЯ ПОЧТА',
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.titleColor,
                    height: 2.2,
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: AppColors.grey30,
                    ),
                    child: TextFormField(
                      validator: (value) => emailValidator(value),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 11, left: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  ' ПАРОЛЬ',
                  textAlign: TextAlign.start,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.titleColor,
                    height: 2.3,
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: AppColors.grey30,
                    ),
                    child: TextFormField(
                      validator: (value) => passwordValidator(value),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 11, left: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  onPressed: () {},
                  text: 'Зарегистрироваться',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 170),
                  child: Row(
                    children: [
                      Text(
                        'Уже есть учетная запись?',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Войти',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColors.mainColor,
                            height: 2,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.mainColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
