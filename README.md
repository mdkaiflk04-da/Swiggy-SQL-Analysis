# 🍔 Swiggy SQL Analysis

A data analysis project using **MySQL** to explore and derive insights from Swiggy's restaurant dataset. The project covers real-world business questions answered using advanced SQL concepts like **Subqueries**, **CTEs**, and **Window Functions**.

---

## 📁 Project Structure

| File | Description |
|------|-------------|
| `SubQueryQ&A.sql` | Business questions answered using Subqueries and CTEs |
| `Windowfunctions.sql` | Restaurant analysis using Window Functions and CASE statements |

---

## 🗄️ Dataset

The project uses a `restaurants` table from the `swiggy` database with the following key columns:

| Column | Description |
|--------|-------------|
| `name` | Restaurant name |
| `city` | City of the restaurant |
| `cuisine` | Type of cuisine served |
| `cost` | Average cost per person |
| `rating` | Restaurant rating |
| `rating_count` | Number of people who rated (used as footfall proxy) |

---

## 🔍 Analysis Breakdown

### 📌 SubQueryQ&A.sql — Business Questions

Answers 10+ business questions using **Subqueries** and **CTEs (Common Table Expressions)**:

- 🏙️ Which restaurant in Delhi has the least footfall?
- 💰 Which restaurant has generated maximum revenue across India?
- ⭐ How many restaurants have a rating above the national average?
- 🏆 Which restaurant chain has the most outlets?
- 📈 Which restaurant chain has generated the highest total revenue?
- 🌆 Which city has the most restaurants and highest revenue?
- 🍽️ Top 10 most and least expensive cuisines

### 📌 Windowfunctions.sql — Ranking & Categorization

Uses **Window Functions** and **CASE** statements to:

- 📊 Rank restaurants from most to least expensive globally and by city
- 👥 Rank restaurants by popularity (rating count)
- 🍕 Rank restaurants by price within each cuisine using `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()`
- 🏷️ Categorize restaurants into **Fine Dine / QSR / Fast Food** based on cost
- 📣 Classify restaurants as **Most Popular / Popular / Least Popular** based on footfall

---

## 🛠️ SQL Concepts Used

- `Subqueries` (Scalar & Correlated)
- `CTEs` (WITH clause)
- `Window Functions` — `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`
- `PARTITION BY` and `ORDER BY` in window frames
- `CASE` statements
- `GROUP BY` with aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`)

---

## ▶️ How to Run

1. Import the Swiggy dataset into your MySQL environment
2. Run `USE swiggy;` to select the database
3. Open and execute either `.sql` file in **MySQL Workbench** or any SQL client

---

## 👤 Author

**Md Kaif**
- GitHub: [@mdkaiflk04-da](https://github.com/mdkaiflk04-da)
