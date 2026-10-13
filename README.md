
# Sales Data Analysis

## Project Overview
An exploratory sales data analysis project using Python, Pandas,
SQL, and data visualization to examine transaction-level retail data.

## Objectives
- Analyze sales value and units sold.
- Examine monthly sales trends.
- Identify products and countries with the highest sales value.
- Calculate average order value.
- Investigate data-quality issues before analysis.

## Tools and Technologies
- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- SQLite and SQL
- Jupyter Notebook

## Dataset
Source: UCI Machine Learning Repository — Online Retail

https://archive.ics.uci.edu/dataset/352/online+retail

Download the dataset and place `Online Retail.xlsx` in `data/raw/`.

## Project Structure
```text
sales-data-analysis/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
├── sql/
├── reports/
├── requirements.txt
├── README.md
└── .gitignore
```

## Analysis Workflow
1. Load and inspect the original dataset.
2. Investigate missing values, duplicates, cancellations,
   negative quantities, and invalid prices.
3. Apply documented cleaning rules.
4. Calculate positive transaction sales value.
5. Explore monthly trends, products, and countries.
6. Execute SQL queries against a local SQLite database.

## Reproduce the Analysis

Create and activate a virtual environment, then install dependencies:

```bash
pip install -r requirements.txt
```

Download the dataset from the source above and place it in
`data/raw/Online Retail.xlsx`.

Open `notebooks/01_data_inspection.ipynb` and run the cells
in order to inspect, clean, and analyze the data.

## Cleaning Scope
The current analysis removes exact duplicates, records missing
essential transaction fields, cancelled invoices, and rows with
non-positive quantities or prices.

Missing customer IDs are retained. Returns and cancellations
are excluded from the positive-sales analysis, so the calculated
sales value is not net revenue after returns.

## Results
Add verified metrics, charts, and findings after completing
the analysis. Do not add unverified conclusions.
