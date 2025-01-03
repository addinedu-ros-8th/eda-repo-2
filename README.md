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
    ▶️자율주행 <b>브랜드</b>별 사고건수 조사 <br>
    Waymo, GM Cruise
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-08-08.png" width=900>
  <br>
  <br>
  <p align="left">
    <br>
    <br>
    ▶️자율주행 <b>시스템</b>별 사고건수 조사 <br>
    자율주행 차량 사고건수 내에서 탑재된 system 별로 사고량을 분석. <br>    
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-09-18.png" width=900>
  <p>
      ☝️<br>
      Level 2 ADAS가 가장 높음 <br>
      ADS는 비교적 낮으며 두개 다 가지고 있는 차량이 가장 사고량이 적음 <br>
      ADS의 안정화 예시: Waymo[Level 4, ADS] (2022년 이후로 안정되고 있는 중)
    <br>
    <br>
    <br>
  </p>
  <p align="left">
    ▶️자율주행 <b>도로유형</b>별 사고건수 조사 <br>
    도로유형: 교차로, 기타, 주차장, 단일로 <br>    
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-09-57.png" width=900>
  <p align="left">
    <br>
    <br>
    ▶️자율주행 <b>속도</b>별 사고건수 조사 <br>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-10-20.png" width=900>
  <p align="left">
    <br>
    <br>
    ▶️자율주행 <b>속도 & 사고당시 상태</b>별 사고건수 조사 <br>
    상태: 졸음, 음주, 주차, 유턴, 좌/우회전, 직진, 차로위반, 중앙선 침범
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-10-51.png" width=900>
  <p align="left">
    <br>
    <br>
    ▶️샌프란시스코 <b>날씨</b>별 사고건수 조사 <br>
    날씨: 맑음, 흐림, 비, 눈
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-11-48.png" width=900>
   <p align="left">
    <br>
    <br>
    ▶️샌프란시스코 날씨에 따른 <b>상대적 위험도</b> <br>
  </p>
  <img src="img/Screenshot%20from%202025-01-03%2011-12-22.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-12-49.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-13-26.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-15-06.png" width=900>
  <img src="img/Screenshot%20from%202025-01-03%2011-15-48.png" width=900>  
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



