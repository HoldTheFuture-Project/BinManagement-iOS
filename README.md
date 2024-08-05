<img width="1024" alt="HTF" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/HTF.png?raw=true">


<br/><br/>

## 목차
- [프로젝트 소개](#프로젝트-소개)
- [팀 구성 및 역할](#팀-구성-및-역할)
- [기술 스택](#기술-스택)
- [주요 기능 실행 화면](#주요-기능-실행-화면)
- [주요 기술](#주요-기술)
- [회고](#회고)

<br/><br/>

## 프로젝트 소개

### **미래를담다**
청소 관리자들이 쓰레기통을 효율적으로 관리할 수 있도록 하는 서비스입니다.

### **개발 기간**

2023.09.25~2023.11.21


### **iOS 최소 버전**

15.0

<br/>

### **기능**

- 🔓 로그인
- 🗑️ 건물별 쓰레기통 조회
- 🗑️ 건물 내 쓰레기통 조회
- 📈 쓰레기통 상태 및 추이 조회
- 🏫 건물 검색
- 👤 마이페이지

<br/><br/>

## 팀 구성 및 역할

**구성원:** iOS Developer(1), Server Developer(1), ML Developer(1)

**담당 역할(휘진):** 기획, 디자인, iOS 개발

<br/><br/>

## 기술 스택

- **언어:** `Swift`
- **프레임워크:** `UIKit`
- 아키텍쳐: `MVC`
- **사용한 라이브러리:**
    - `Alamofire`
    - `KingFisher`
    - `DGCharts`
    - `SnapKit`
    - `Then`
    - `Toast`
- 기타
    - `KakaoMaps SDK`
    
<br/><br/>

## 주요 기능 실행 화면

| 건물별 쓰레기통 조회          | 건물 내 쓰레기통 조회         | 쓰레기통 상태 및 시간별 추이 조회     |
|----------------|----------------|----------------|
| <img width="232" alt="Map" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/map.png?raw=true"> | <img width="232" alt="In Building" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/inbuilding.PNG?raw=true"> | <img width="232" alt="Graph" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/graph.PNG?raw=true"> |

| 건물 검색          | 마이페이지         |
|----------------|----------------|
| <img width="232" alt="Search" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/search.PNG?raw=true"> | <img width="232" alt="My Page" src="https://github.com/hwiwls/BinManagement-iOS/blob/main/ReadmeAssets/mypage.PNG?raw=true"> |

<br/><br/>

## 주요 기술

**아키텍처**

- MVC 패턴을 사용하여 애플리케이션의 구조를 세 가지 주요 컴포넌트로 분리하고, 각 컴포넌트의 역할을 명확히 하여 코드의 재사용성과 유지보수성을 높였습니다.

  <br/>

**네트워크 통신**

- 네트워크 요청과 응답 데이터를 처리하기 위해 Alamofire를 사용하였으며, 데이터의 Encoding과 Decoding을 관리했습니다.

<br/>

**기타**

- Firebase Cloud Messaging을 사용하여 푸시 알림 기능을 구현했습니다.
- Kakao Map SDK를 사용하여 지도 기능을 구현하고, 사용자 위치 기반 서비스를 제공했습니다.
- Charts 라이브러리를 사용하여 데이터 시각화를 통해 사용자에게 직관적인 그래프와 차트를 제공했습니다.

<br/><br/>

## 회고
이번 프로젝트는 여러 도전과 성장을 경험할 수 있었습니다. 특히 기획, 디자인, iOS 개발을 전담하면서 프로젝트 전반을 깊이 이해하고 다양한 역할을 수행할 수 있었습니다. MVC 아키텍처를 채택하여 애플리케이션을 세 가지 주요 컴포넌트로 분리함으로써 코드의 재사용성과 유지보수성을 높이는 데 주력했습니다.

그 이외로는, Alamofire를 활용한 네트워크 통신과 Firebase Cloud Messaging을 통한 푸시 알림 기능 구현, 그리고 Kakao Map SDK를 이용한 지도 기능을 추가하면서 사용자 경험을 향상시키고자 노력했습니다. 또한, DGCharts를 사용해 직관적인 데이터 시각화를 제공함으로써 사용자들이 쉽게 정보를 파악할 수 있도록 했습니다.

프로젝트를 진행하면서 여러 성과를 거두었지만, 동시에 몇 가지 아쉬움도 남았습니다. 예를 들어, MVC 패턴의 한계로 인해 ViewController에 과도한 역할이 집중되면서 코드 복잡도가 높아지는 문제를 겪었습니다. 이를 해결하기 위해 향후 프로젝트에서는 MVVM이나 VIPER와 같은 다른 아키텍처 패턴을 검토할 계획입니다. 또한, 비동기 작업의 효율적인 관리를 위해 RxSwift와 같은 반응형 프로그래밍 도구의 도입도 고려하고 있습니다.

이번 프로젝트는 기획 단계에서부터 배포까지의 전 과정을 경험하며 큰 성장을 이룰 수 있는 기회였습니다. 이러한 경험을 바탕으로 앞으로 더 나은 아키텍처와 효율적인 개발 방법론을 적용하여 보다 견고하고 확장 가능한 애플리케이션을 개발할 수 있게 되었으면 좋겠습니다.
