# 🍽️ Restaurant Order Analysis

This project analyzes restaurant order data to gain insights into menu item popularity, order patterns, and revenue. It includes:

- ✅ MySQL database (`restaurant_db.sql`)
- ✅ SQL analysis queries
- ✅ Cleaned and raw datasets
- ✅ A Streamlit interactive dashboard

---

## 📊 Dataset Description

### 🔹 menu_items_raw.csv
- **Columns**: `menu_item_id`, `item_name`, `category`, `price`
- **Records**: 32 menu items (American, Asian, Mexican, Italian)

### 🔹 order_details_raw.csv
- **Columns**: `order_details_id`, `order_id`, `order_date`, `order_time`, `item_id`
- **Records**: 12,234 orders (2023-01-01 to 2023-03-31)

---

## 🧠 Analysis Highlights

Included in `Restaurant Order Analysis.sql`:
- Total menu items, least/most expensive
- Most popular and least popular dishes
- Category-wise breakdowns
- Orders with most items
- Top 5 spenders and revenue analysis
