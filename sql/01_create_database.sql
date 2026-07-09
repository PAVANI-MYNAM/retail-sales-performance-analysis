# Data Import Notes

Dataset: Sample Superstore (Kaggle)

Database: RetailSalesDB

Table: SuperstoreRaw

Import Method:
- SQL Server Import Flat File Wizard

Data Quality Issues:
- 9,994 rows imported successfully.
- One NULL value introduced in the Profit column during import.
- Corrected using an UPDATE statement after verifying against the source CSV.