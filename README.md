# Autonomous Analysis
![Project Logo](img/image.png "Project Logo")

## Table of Contents
- [Topic Background](#topic-background)
- [Data Analysis Strategy](#data-analysis-strategy)
- [USA Data Analysis]()
  <br>
  <br>
  <br>
  
## 🚘 Topic Background
- " 자율주행의 시대가 다가오는 요즘, 급발진, 음주운전, 졸음운전등의 사고문제가 자율주행으로 해결될 수 있을까? " <br>
  궁금증으로부터 저희의 프로젝트가 시작되었습니다.
  <br>
  <br>

## Data Analysis Strategy
### 📌 Scope Limitation 
To streamline our analysis, we defined the scope as follows:
- **South Korea:** Seoul  
- **United States:** San Francisco  
  <br>

### 💡 ER Diagram
미국과 한국의 교통사고 데이터를 한 테이블에 저장 (car_accident)
![ERD](img/ERD.png)

<br>

**Column Descriptions**
- `auto_type_id`: auto or manaul
- `state_id`: Seoul or SF
- `weather_id`: 5 different weather type (clear, cloud, rain, snowy, other)
- `road_type_id`: intersection, high way, parking lot, other
- `movement_id`: movement at crash moment (turning, straight, back, etc)
- `brand_id`: autonomous car company name
- `pavement_id`: road codition type (dry, wet, icy, other)

  <br>
  <br>

## USA Data Analysis
<div align="center">
  <p align="left">
    ▶️먼저 자율주행 상용화가 잘된 미국에서 브랜드별 사고건수를 먼저 조사해보자!  <br>
    <li align="left">Waymo는 현재 Phoenix, San Francisco, Los Angles 지역에서만 운영중.
    <li align="left">그 중 Waymo 뿐만 아니라 다른 브랜드들도 San Francisco 지역에 가장 활발하게 상용화되고 있다. -> San Francisco로 집중 분석) <br>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-08-08.png" width=900>
  <br>
  <br>
  <p align="left">
    <br>
    <br>
    ▶️그럼 자율주행 레벨별 (시스템별) 사고건수는 어떨까? <br>
    <li align="left">대부분은 (테슬라, 현대 등) Level 2 ADAS 성능을 지님
    <li align="left">로봇 택시 경우 (Waymo, GM Cruise) Level 3, 4를 보여주는 ADS 기능을 탑재   
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-09-18.png" width=900>
  <p align="center">
      ☝️<br>
      Level 2 ADAS가 가장 높음 <br>
      ADS는 비교적 낮으며 두개 다 가지고 있는 차량이 가장 사고량이 적음 <br>
      ADS의 안정화 예시: Waymo[Level 4, ADS] (2022년 이후로 안정되고 있는 중) <br>
      분석한계: Level 2 차종개수가 현저히 많기 때문에 더 높게 집계된 가능성을 배제하지 못한다.
    <br>
    <br>
    <br>
  </p>
  <p align="left">
    ▶️자율주행과 일반주행 차량 각각 어떤 도로에서 사고건수가 제일 많을까? <br>
    <li align="left">도로유형: 교차로, 기타, 주차장, 단일로 <br>    
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-09-57.png" width=900>
  <p align="left">
    <br>
    <br>
    ▶️그럼 어떤 속도에서 자율주행 차량은 사고가 제일 많이 일어났을까? <br>
    <li align="left">(비자율주행 차량은 데이터가 존재하지 않았음)</li>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-10-20.png" width=900>
  <p> ☝️ <br>
    우리의 예측: 자율주행 차량은 주로 시내, 단일로에서 주행을 하며 고속도로까지 주행을 하지 않음. <br>
    이에 속도가 빠를 수 없고, 속도 제한 구간에서 더 엄격하게 지킬 것이기에 주로 천천히 주행할 것이라 예상함.
  </p>
  <p align="left">
    <br>
    <br>
    ▶️자율주행 <b>속도 & 사고당시 상태</b>별 사고건수 조사 <br>
    상태: 졸음, 음주, 주차, 유턴, 좌/우회전, 직진, 차로위반, 중앙선 침범
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-10-51.png" width=900>
  <p> ☝️ <br>
    앞서 말했듯, 자율주행은 주로 시내에서 주행하기에 [저속으로 주행] + [직진 & 좌/우회전]에서 사고가 가장 많다.
  </p>
  <p align="left">
    <br>
    <br>
    ▶️자율주행이 날씨의 변화에도 잘 주행할 수 있을까? (일반주행이랑 비교) <br>
    <li align="left">날씨: 맑음, 흐림, 비, 눈</li>
    <li align="left">위치: San Francisco</li>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-11-48.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-12-22.png" width=900>
  <p> ☝️ <br>
    날씨에 따른 사고율 차이는 자율주행, 일반주행 크게 차이는 없다. <br>
  </p>
  <p align="left">
    <br>
    <br>
    ▶️자율주행과 일반주행의 날씨별 도로 노면상태에 따른 사고율 비교 <br>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-12-49.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-13-26.png" width=900>
  <p> ☝️ <br>
    자율주행이 [날씨 흐림 + 도로 건조]할 때 빼고는 비교적 일반주행보다 사고율이 적다.<br>
  </p>
  <p align="left">
    <br>
    <br>
    ▶️자율주행은 주행상태가 어떨 때 사고가 많이 날까? (일반주행이랑 비교) <br>
    <li align="left">위: 자율주행</li>
    <li align="left">아래: 비자율주행</li>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-15-06.png" width=900>
  <p align="left">
    <br>
    <br>
    ▶️2021-2024의 데이터로 자율주행의 성능개선이 이루어졌는지 확인해보자 <br>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-15-48.png" width=900> 
  <p> ☝️ <br>
    다행히 직진에서의 사고율이 점점 줄어드는걸 보니 개선이 되고 있다는 것을 알 수 있다.<br>
  </p>
  <br>
  <br>
  <br>
  <br>
</div>

## KR Data Analysis
<div align="center">
  <img src="img/Screenshot%20from%202025-01-03%2011-53-40.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-53-44.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-53-48.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-53-51.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-53-54.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-53-58.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-54-02.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-54-06.png" width=900>
  <br>
  <br>
  <br>
  <br>
</div>

## Conclusion



