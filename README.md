# 📦 E-commerce_Data_Pipeline_Database_
Project

This repository contains datasets, SQL database files, and an ETL script for an **E-commerce Data Pipeline**. The project extracts data from raw datasets, loads it into a MySQL database, and processes it using an ETL pipeline.

---

## 📂 Project Structure

```
Ecommerce_Data_Pipeline/
│── datasets/                # Raw data files used for extraction
│   ├── orders_data.csv
│   ├── payments_data.xlsx
│   ├── products_data.csv
│   ├── reviews_data.xlsx
│   ├── users_data.csv
│── database/                # MySQL database files
│   ├── E-commerce_DB.sql    # MySQL dump file (schema & data)
│   ├── ecommerce_db/        # InnoDB tablespace files
│   │   ├── orders.ibd
│   │   ├── payments.ibd
│   │   ├── products.ibd
│   │   ├── reviews.ibd
│   │   ├── users.ibd
│── ETL_E_Commerce.ipynb     # Jupyter Notebook for ETL process
│── README.md                # Project documentation
```

---

## 📊 Datasets Description

| File Name            | Format  | Description |
|----------------------|---------|-------------|
| `orders_data.csv`    | CSV     | Contains customer order details |
| `payments_data.xlsx` | Excel   | Includes payment transaction records |
| `products_data.csv`  | CSV     | Product details (name, category, price, etc.) |
| `reviews_data.xlsx`  | Excel   | Customer product reviews & ratings |
| `users_data.csv`     | CSV     | User profile information |

---

## 🗄️ Database & SQL Files

- `E-commerce_DB.sql` → MySQL database dump for easy restoration.
- `ecommerce_db/` → Contains `.ibd` files for raw MySQL **InnoDB tablespace**.

### 📥 Importing Database
**Using MySQL Workbench:**
1. Open **MySQL Workbench**.
2. Go to **Server** → **Data Import**.
3. Select **Import from Self-Contained File** → `E-commerce_DB.sql`.
4. Click **Start Import**.

**Using MySQL CLI:**
```sh
mysql -u your_user -p your_database < E-commerce_DB.sql
```

### 📂 Restoring `.ibd` Files
1. Stop the MySQL server.
2. Copy `.ibd` files to the MySQL data directory.
3. Restart MySQL.
4. Run:
   ```sql
   ALTER TABLE table_name DISCARD TABLESPACE;
   ```
5. Copy respective `.ibd` files into the database folder.
6. Run:
   ```sql
   ALTER TABLE table_name IMPORT TABLESPACE;
   ```

---

## 🔄 ETL Process (Extract, Transform, Load)

- The **ETL_E_Commerce.ipynb** notebook performs the following:
  1. **Extracts** data from CSV & Excel files.
  2. **Transforms** data (cleaning, formatting, and normalization).
  3. **Loads** processed data into MySQL tables.

### 🚀 Running the ETL Script
1. Open the **Jupyter Notebook**.
2. Run all cells to execute the ETL pipeline.
3. The processed data will be inserted into MySQL.

---

## 🌟 Contribution & Usage
- Fork this repository, make changes, and submit a Pull Request.
- Feel free to use this for your own projects.
