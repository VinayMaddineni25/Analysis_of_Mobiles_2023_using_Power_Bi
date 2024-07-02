# Analysis_of_Mobiles_2023_using_Power_Bi
## Problem Statement

The Power BI Dashboard titled "Analysis of Mobile 2023" is a comprehensive infographic that presents a variety of statistics and insights about mobile phones. This dashboard is designed to provide stakeholders with a clear understanding of the mobile phone market trends, consumer preferences, and the distribution of key mobile features based on data from 600 analyzed mobile phones. 

## Steps for creating the Mobile Analysis Dashboard

### Step 1: Create a SQL Server Database and Import Data

1. **Open SQL Server Management Studio (SSMS) 19:**
   - Launch SSMS and connect to your SQL Server instance.

2. **Create a New Database:**
3. **Import Data into the `Mobile_Analysis` Table:**
   - Prepare your data in a suitable format (e.g., a `.csv` file).
   - Use the SQL Server Import and Export Wizard in SSMS:
     - Right-click on the `MobileAnalysis` database.
     - Select `Tasks > Import Data`.
     - Follow the wizard steps to import data from your source file into the `Mobile_Analysis` table.

### Step 2: Execute the Query

1. **Run the Query to Retrieve All Records:**
   ```sql
   SELECT * FROM Mobile_Analysis;
   -- Check mobile features and price list --
    SELECT phone_name, price 
    FROM Mobile_Analysis;
    
    -- Find out the price of 5 most expensive phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis
    ORDER BY price DESC;
    
    -- Find out the price of 5 cheapest phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis
    ORDER BY price ASC;
    
    -- List of top 5 Samsung phones with price and all features --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE brands = 'Samsung'
    ORDER BY price DESC;
    
    -- Must have android phone list then top 5 high price android phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE operating_System_Type = 'Android'
    ORDER BY price DESC;
    
    -- Must have android phone list then top 5 lower price android phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE operating_System_Type = 'Android'
    ORDER BY price ASC;
    
    -- Must have IOS phone list then top 5 high price IOS phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE operating_System_Type = 'iOS'
    ORDER BY price DESC;
    
    -- Must have IOS phone list then top 5 lower price IOS phones --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE operating_System_Type = 'iOS'
    ORDER BY price ASC;
    
    -- Write a query which phones support 5G and also top 5 phones with 5G support --
    SELECT TOP 5 * 
    FROM Mobile_Analysis 
    WHERE _5g_Availability = 1
    ORDER BY price DESC;
    
    -- Total price of all mobile is to be found with brand name --
    SELECT brands, SUM(price) AS total_price
    FROM Mobile_Analysis 
    GROUP BY brands;
   ```

### Step 3: Import Data from SQL Server into Power BI

1. Open Power BI.
2. Select `Get Data > SQL Server`.
3. Connect to your SQL Server instance and select the `MobileAnalysis` database.


### Step 4: Create and Format Visualizations

1. **Total Mobiles Card:**
   - Select `Card` from Visualizations.
   - Drag `Total_Mobiles` to the card.
   - Format the card in `Format your visuals`.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/56faa3c0-c8f2-4404-91a3-24bf8d4a1377)

2. **Phone Names Table:**
   - Select `Table` from Visualizations.
   - Add `Phone_name`.
   - Format the table with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/0ef5297d-c405-4f96-9d35-5fc32fef0bd0)

3. **Brands Table:**
   - Copy the Phone Names table.
   - Remove `Phone_name` and add `Brands`.
   - Format the table with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/b0a13304-5ae3-4995-82dd-57ccb7ed534b)

4. **Clustered Column Chart:**
   - Add `Operating_System_Type` to X-axis and `Total_Mobiles` to Y-axis.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/fed752ee-e657-47aa-9fd9-7658248f6235)

5. **Donut Chart for Battery Capacity:**
   - Add `Battery_Capacity_Range` to Legend and `Total_Mobiles` to Values.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/c16a9bcc-1d60-46e7-844c-e7715dd39ebb)

6. **Stacked Bar Chart for 5G Availability:**
   - Add `5g_Availability` to Y-axis and `Total_Mobiles` to X-axis.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/c7674371-af82-49de-b5b5-915c65d91d8f)

7. **Donut Chart for Brands:**
   - Add `Brands` to Legend and `Total_Mobiles` to Values.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/abd2d0ef-39e8-42d9-8834-b2ba5a37fa79)

8. **Stacked Column Chart for Internal Storage:**
   - Add `Internal_Storage` to X-axis and `Total_Mobiles` to Y-axis.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/b0fe6b84-756f-42f3-a34b-4b6fb8276cf6)

9. **Donut Chart for RAM Storage:**
   - Add `RAM_Storage` to Legend and `Total_Mobiles` to Values.
   - Format the chart with background settings.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/4336ec1f-4323-4adb-8c33-ab1c85404d23)

## Finalizing the Dashboard

- Ensure all visualizations are properly formatted and arranged.
- Save your Power BI dashboard.

![image](https://github.com/VinayMaddineni25/Analysis_of_Mobiles_2023_using_Power_Bi/assets/71554745/81f23233-7489-4508-89ff-18f8a5b55df4)

## Insights

### Overview
The dashboard provides a comprehensive analysis of the mobile market for 2023. It includes various visualizations that offer insights into different aspects of mobile phones, such as operating systems, brands, battery capacity, 5G availability, internal storage, and RAM capacity. Below are the key insights derived from the visualizations:

### Total Mobiles
- **Total Mobile Count:** The total number of mobiles analyzed is 600.

### Phone Names
- **Phone List:** A detailed list of mobile phones is displayed, showing different models including various versions of Apple iPhone 11, among others.

### Brands Analysis
- **Top Brands:** The chart shows a distribution of mobiles among different brands.
  - **Apple** and **Samsung** are the leading brands, with Apple having a slight edge.
  - **Other notable brands** include Xiaomi, Oppo, Vivo, and Nokia.

### Operating System of Mobile
- **Operating System Distribution:**
  - **Android:** Dominates the market with 453 mobiles.
  - **iOS:** Has a significant presence with 103 mobiles.
  - **Others:** Include smaller shares for systems like Windows and others.

### Battery Capacity
- **Battery Capacity Distribution:**
  - The majority of mobiles have a battery capacity between 4000mAh to 5000mAh.
  - A smaller portion falls within the 2000mAh to 3000mAh range.
  - Some mobiles have unspecified battery capacities.

### 5G Availability
- **5G vs. Non-5G Phones:**
  - **Non-5G Phones:** Make up a significant portion with 497 mobiles.
  - **5G Phones:** Account for 103 mobiles, indicating a growing but still smaller segment of the market.

### RAM Capacity
- **RAM Distribution:**
  - The majority of mobiles have 4GB of RAM.
  - Other notable segments include 6GB, 8GB, and 12GB.

### Internal Storage
- **Storage Distribution:**
  - A significant number of mobiles have 128GB of internal storage.
  - Other common storage options include 64GB, 256GB, and smaller amounts like 32GB.

### Summary
- The mobile market is dominated by Android devices, with a substantial number of iOS devices.
- Apple and Samsung are the leading brands, with a strong presence in the market.
- The trend shows that most mobiles have high battery capacities, indicating consumer preference for longer battery life.
- While 5G is becoming more common, the majority of mobiles are still non-5G.
- Most mobiles come with moderate to high RAM and internal storage capacities, catering to a range of consumer needs from basic usage to high-performance requirements.

This dashboard provides valuable insights for stakeholders to understand market trends, consumer preferences, and the distribution of mobile features in 2023.
