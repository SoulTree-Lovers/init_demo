import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255), // 배경색
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', width: 200, height: 200), // 로고 이미지
            // const SizedBox(height: 30),
            const Text(
              "Get ready to job in it !",
              style: TextStyle(
                color: Color.fromARGB(255, 140, 163, 255),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300, // 가로 길이 설정
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            // Divider(
            //   color: Colors.black.withOpacity(0.2), // 선의 색상 설정
            //   thickness: 1, // 선의 두께 설정
            //   height: 20, // 선 위아래로 간격 설정
            //   indent: 7, // 선의 시작 위치에서 왼쪽으로 간격 설정
            //   endIndent: 7, // 선의 끝 위치에서 오른쪽으로 간격 설정
            // ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // 폼 박스 배경색
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFBDBDBD)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // 폼 박스 배경색
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFBDBDBD)),
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // 로그인 버튼
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 176, 230, 255), // 로그인 버튼 색상
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
