# SQL Bootcamp
![SQL](https://img.shields.io/badge/SQL-white?style=for-the-badge&logo=databricks)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

## Description

Welcome to my personal SQL course project as part of the School21 training program. This repository contains my solutions to assignments completed during the course. The purpose of this project is to document my progress and share my SQL problem solving experiences with other students and those interested.

## Information

In this repository you will not find:
- Database initialization scripts.
- Detailed explanations or theoretical materials that are the intellectual property of School21.
- Any other materials or resources for which School21 owns the rights.

All solutions and tasks presented here are developed by me as part of my work and do not violate School21's privacy policy.

## Database schema

![Database](img/DB.png)

1. **pizzeria** table (Dictionary Table with available pizzerias)
- field id - primary key
- field name - name of pizzeria
- field rating - average rating of pizzeria (from 0 to 5 points)
2. **person** table (Dictionary Table with persons who loves pizza)
- field id - primary key
- field name - name of person
- field age - age of person
- field gender - gender of person
- field address - address of person
3. **menu** table (Dictionary Table with available menu and price for concrete pizza)
- field id - primary key
- field pizzeria_id - foreign key to pizzeria
- field pizza_name - name of pizza in pizzeria
- field price - price of concrete pizza
4. **person_visits** table (Operational Table with information about visits of pizzeria)
- field id - primary key
- field person_id - foreign key to person
- field pizzeria_id - foreign key to pizzeria
- field visit_date - date (for example 2022-01-01) of person visit 
5. **person_order** table (Operational Table with information about persons orders)
- field id - primary key
- field person_id - foreign key to person
- field menu_id - foreign key to menu
- field order_date - date (for example 2022-01-01) of person order 

## Tasks

- [**Day00**](src/Day00/)
  - Basic SQL syntax: use of SELECT, JOIN, UNION etc.
- [**Day01**](src/Day01/)
  - Basic SQL syntax: use of SELECT, JOIN, UNION etc.
- [**Day02**](src/Day02/)
  - Basic SQL syntax: use of SELECT, JOIN, UNION etc.
- [**Day03**](src/Day03/)
  - Basic SQL syntax: use of SELECT, JOIN, UNION etc.
- [**Day04**](src/Day04/)
  - Task is dedicated to virtual views and physical snapshots of data.
- [**Project00**](src/Project00/)
  - Solve the comovoyardi problem 
- [**Day05**](src/Day05/)
  - Data Governance Policies, Database indexes, Database Sequences.


## Disclaimer

This repository is for educational purposes and is intended to demonstrate my SQL skills. I am not responsible for any use of the material presented here for purposes that violate School21 rules and regulations or any other legal restrictions.

## License

For all non-School21 intellectual property materials, the [MIT License](LICENSE) applies.