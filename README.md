# Autonomous Analysis
![Project Logo](img/image.png "Project Logo")

## Table of Contents
- [Background](#topic-background)
- [DataStrategy](#data-analysis-strategy)


## 🚘 Topic Background
- " 자율주행의 시대가 다가오는 요즘, 급발진, 음주운전, 졸음운전등의 사고문제가 자율주행으로 해결될 수 있을까? " <br>
  궁금증으로부터 저희의 프로젝트가 시작되었습니다.

## Data Analysis Strategy
### 📌 Scope Limitation 
To streamline our analysis, we defined the scope as follows:
- **South Korea:** Seoul  
- **United States:** San Francisco  

### 💡 ER Diagram
We save all accidents data (both United States and South Korea) in ONE table (named 'car_accident').
![ERD](https://github.com/user-attachments/assets/c6859668-3127-42bb-b000-6e2ce33e5eda)
<br>
<br>
**Column Descriptions**
- `auto_type_id`: auto or manaul
- `state_id`: Seoul or SF
- `weather_id`: 5 different weather type (clear, cloud, rain, snowy, other)
- `road_type_id`: intersection, high way, parking lot, other
- `movement_id`: movement at crash moment (turning, straight, back, etc)
- `brand_id`: autonomous car company name
- `pavement_id`: road codition type (dry, wet, icy, other)

  


