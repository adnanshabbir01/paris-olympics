# Paris Olympics 2024
An end-to-end data pipeline using Azure Data Factory, Data Lake, Databricks, and Synapse Analytics processes and stores data for visualization in Power BI.

![Project Workflow](data/project.png)

This project showcases a complete end-to-end data engineering pipeline built using Microsoft Azure, focusing on the Paris Olympics 2024 dataset. The goal was to ingest, transform, and analyze the data using modern cloud-based tools.

🔧 Tools & Services Used
1. Azure Data Factory
2. Azure Data Lake Storage Gen2
3. Azure Databricks (PySpark)
4. Azure Synapse Analytics

📈 Workflow Steps
# Data Ingestion
Raw data was sourced from Kaggle and uploaded to a GitHub repository.
Using Azure Data Factory, a pipeline was created to copy CSV files from GitHub into Azure Data Lake Gen2.

# Data Transformation
The raw data stored in Data Lake was processed using Azure Databricks with PySpark for cleaning, formatting, and transformation. The transformed data was saved back into Data Lake Gen2.

# Data Analysis
Transformed data was imported into Azure Synapse Analytics.
SQL Notebooks were used for performing data analysis and generating insights.
