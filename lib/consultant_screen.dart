import 'package:flutter/material.dart';

class ConsultantScreen extends StatelessWidget {
  static const List<Consultant> consultants = [
    Consultant(
      name: '김현중',
      photo: 'https://picsum.photos/200',
      experience:
          '경영전략 및 마케팅 전문가\n현재 대한상공회의소 경영전략연구소 소장\nSK그룹, 한화 등 다수의 대기업 및 공공기관 컨설팅 경력 보유',
    ),
    Consultant(
      name: '이현석',
      photo: 'https://picsum.photos/201',
      experience:
          '인공지능 전문가\n현재 KAIST 인공지능연구소 교수\n미국 MIT, 스탠포드 대학에서 박사 연구원 경력 보유',
    ),
    Consultant(
      name: '최종영',
      photo: 'https://picsum.photos/202',
      experience: '금융 전문가\n현재 하나금융지주 경영전략팀장\n미국 해버드대학교 MBA 취득 및 금융권 대기업 경력 보유',
    ),
    Consultant(
      name: '박지훈',
      photo: 'https://picsum.photos/203',
      experience:
          '경제학 전문가\n현재 서강대학교 경제학과 교수\n미국 뉴욕대학교에서 박사학위 취득 및 경제학 분야 연구 실적 보유',
    ),
    Consultant(
      name: '이호연',
      photo: 'https://picsum.photos/204',
      experience:
          '융합 기술 전문가\n현재 한국전자통신연구원 융합기술연구본부 부원장\n인공지능, 로봇, 클라우드 등 첨단 기술 분야에서 다수의 연구 성과 보유',
    ),
    Consultant(
      name: '박윤하',
      photo: 'https://picsum.photos/205',
      experience:
          '의료 기술 전문가\n현재 서울대학교 병원 의료인공지능연구실 교수\n의료영상 분석, 암 진단 등 의료 분야에서 인공지능 응용에 대한 연구 실적 보유',
    ),
    Consultant(
      name: '윤병길',
      photo: 'https://picsum.photos/206',
      experience:
          '환경공학 전문가\n현재 한국환경공단에서 신재생에너지사업과장\n환경 문제 해결을 위한 다양한 신재생에너지 기술 및 정책 분야에서 경력 보유',
    ),
    Consultant(
      name: '이중희',
      photo: 'https://picsum.photos/207',
      experience:
          '블록체인 전문가\n현재 블록체인 기업 이더리움코리아 대표\n블록체인 분야에서 국내외 다수의 연구 및 프로젝트 경험 보유',
    ),
    Consultant(
      name: '임준영',
      photo: 'https://picsum.photos/208',
      experience: '인터넷 보안 전문가\n현재 한국인터넷진흥',
    ),
  ];

  const ConsultantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '이닛 전문가 리스트',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      // body: ListView.builder(
      //   itemCount = consultants.length,
      //   itemBuilder = (BuildContext context, int index) {
      //     return ConsultantCard(consultant: consultants[index]);
      //   },
      //   {super.key},
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '즐겨찾기',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
      ),
    );
  }
}

class Consultant {
  final String name;
  final String photo;
  final String experience;

  const Consultant(
      {required this.name, required this.photo, required this.experience});
}

class ConsultantCard extends StatelessWidget {
  final Consultant consultant;

  const ConsultantCard({super.key, required this.consultant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 컨설턴트를 선택한 후의 동작을 정의
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              width: 70,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(consultant.photo),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  consultant.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  child: Text(
                    consultant.experience,
                    style: const TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
