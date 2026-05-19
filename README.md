**💻 Laptop Price Prediction Using Machine Learning (R)**

**📌 Project Overview**

This project builds a predictive model to estimate laptop prices using machine learning techniques in R. The dataset contains 1,560+ laptop records with hardware specifications and pricing information.

The goal is to identify the key factors that influence laptop prices and build a regression model capable of making accurate predictions.

making accurate predictions. <br>


**🎯 Objectives**
- Clean and prepare laptop specification data
- Perform exploratory data analysis (EDA)
- Engineer meaningful features for modeling
- Build a multiple linear regression model
- Evaluate model performance using RMSE and R²
- Identify the most influential pricing factors <br>


**📊 Dataset Description**

The dataset includes 21 features describing laptop specifications:
- Numerical features: RAM, SSD, HDD, weight, screen resolution, price
- Categorical features: Company, CPU, GPU, operating system, storage type
- Target variable: Laptop Price


**🧹 Data Preprocessing**

Key preprocessing steps:
- Removed inconsistencies and cleaned missing values
- Converted categorical variables for modeling
- Created derived features such as:

      Total storage
      Pixel density (PPI)

- Applied log transformation to price:

      logPrice=log(Price)

This improved model stability and reduced skewness. <br>

**📈 Exploratory Data Analysis**

Key insights from the data:

- Strong positive relationship between RAM and price
- SSD size significantly increases laptop price
- Dedicated GPU presence is a major price driver
- Brand differences influence pricing (e.g., Apple, Dell, Lenovo)
- Weight has a minor but statistically significant effect

**🤖 Model Building**

A multiple linear regression model was trained using the following features:

- RAM (GB)
- SSD storage
- Laptop weight
- Dedicated GPU presence
- Laptop brand (Company)

**Final Model:**

            model <- lm(logPrice ~ Ram_GB + SSD + Weight_kg + Dedicated_Gpu + Company, data = train)

**📉 Model Evaluation**

**Train/Test Split**

- 80% training data
- 20% testing data

**Performance Metrics:**

- Test RMSE: 0.0985 (log scale)
- Model R²: ~0.83 (explains 83% of price variance)

**Interpretation:**

The model generalizes well and does not show major overfitting. It performs consistently on unseen data.

**🔑 Key Findings**

- RAM is the strongest predictor of laptop price
- SSD storage significantly increases price
- Dedicated GPU adds high value to laptops
- Brand differences contribute moderately to pricing
- Model explains a large portion of price variability (R² ≈ 0.83)

**📊 Visualizations**

The analysis includes:

- Price distribution plots
- RAM vs Price relationships
- SSD vs Price trends

**🛠️ Tools & Libraries Used**
- R Programming Language
- dplyr (data manipulation)
- ggplot2 (visualization)
- readr (data loading)
- stats (linear modeling)


**🚀 How to Run This Project**
1. Clone the repository
2. Install required packages:

        install.packages(c("dplyr", "ggplot2", "readr", "Metrics"))

3. Run scripts in order:
- data_cleaning.R
- eda.R
- model_building.R

**📌 Future Improvements**
- Try advanced models (Random Forest, XGBoost)
- Add hyperparameter tuning
- Improve feature engineering (CPU/GPU benchmarking)
- Deploy model as a simple web app (Shiny or Plumber API)

**👤 Author**

Alfred Kisavi
Data Analyst | Statistics & Computer Science Student
Skills: R, Python, SQL, Data Visualization, Machine Learning

**📎 License**

This project is for educational and portfolio purposes.












