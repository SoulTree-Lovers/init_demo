import 'package:flutter/material.dart';

class Expert {
  final String name;
  final String expertise;

  Expert(this.name, this.expertise);
}

final List<Expert> experts = [
  Expert('홍길동', 'UI/UX 디자이너'),
  Expert('김철수', '프론트엔드 개발자'),
  Expert('박영희', '백엔드 개발자'),
  Expert('이순신', '데이터 분석가'),
  Expert('강감찬', '풀스택 엔지니어'),
  Expert('유관순', '기획자'),
  Expert('세종대왕', '인공지능 전문가'),
  Expert('장영실', '로봇공학자'),
  Expert('신사임당', '경영컨설턴트'),
];

class ExpertListScreen extends StatelessWidget {
  const ExpertListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이닛 전문가 리스트'),
      ),
      body: GridView.count(
        crossAxisCount: 3, // 한 행에 출력할 카드 개수
        childAspectRatio: 0.8, // 카드의 가로:세로 비율
        children: experts.map((expert) {
          return InkWell(
            onTap: () {
              // 해당 전문가를 선택하는 코드 작성
            },
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(expert.name),
                  const SizedBox(height: 10),
                  Text(expert.expertise),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // 해당 전문가를 선택하는 코드 작성
                    },
                    child: const Text('선택'),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
