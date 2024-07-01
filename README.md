# Data analysis project on Mint Classics Company database
## Overview
In this project, I will help Mint Classics Company analyze data in a relational database with the goal of supporting inventory-related business decisions that lead to the closure of a storage facility. My suggestions and recommendations will be used to reorganize or reduce inventory, while still maintaining timely service to their customers.
## Goals
1. Find which warehouse to eliminate.
2. Find which product to eliminate.
3. Provide suggestions and recommendations.
## Milestones
### 1. Calculate warehouses' quantity in stock and remaining space:
- Identify the number of products that each warehouse is able to store more before exceeding 80% of its capacity.

![image](https://github.com/thangdang04/Analyze-data-in-a-model-car-database-with-MySQL-Workbench/assets/171898627/0ddd77bd-3a43-4ca1-9bae-0108ac7a520b)


### 2. Find which warehouse to eliminate:
- South warehouse has the lowest total quantity of products in stock (79380).

  => It's most possible to eliminate South warehouse.
### 3. Find which warehouse to store products from the eliminated warehouse:
- West warehouse has the largest remaining space before exceeding 80% of its capacity (74928).

  => 74928 products of South warehouse should be stored in West warehouse.

  => The remaining products (79380-74928=4452) can be stored in either North or East warehouse.
### 4. Find which product to eliminate:
- Identify which product is shipped later than required date.

![image](https://github.com/thangdang04/Analyze-data-in-a-model-car-database-with-MySQL-Workbench/assets/171898627/d680ade9-6538-4196-b789-26a919d5730b)

 
  => No product should be eliminated because no product is frequently shipped later than required date.

- Identify which product has the lowest profit margin.

![image](https://github.com/thangdang04/Analyze-data-in-a-model-car-database-with-MySQL-Workbench/assets/171898627/8aa8de0c-af9c-4d6a-9500-2b5705be9697)

  => Products with the code S10_4962 and S18_1889 should be eliminated because these two products has a low profit margin with large quantity in stock.

### 5. Provide a possible solution on how to eliminate these products:
- The quantity in stock of these two products is large, so eliminateing all of them at once is diffiuclt and if possible, it will be costly.

  => I suggest gradually eliminate these products through running a flash sale on these products or a discount for first-time customers.
  
  => To best accomplish this, I recommend slowly decreasing the price, being sure to remain above a 15% profit margin (average profit margin for this industry) until the products are eliminated.
## Solutions
By using MySQL Workbench, I concluded that the warehouse that needs to be eliminated is the South warehouse. Most of this warehouse's products should be stored in the West warehouse, and the remaining products can be stored in either North or East warehouse.

Moreover, I concluded that two products with the code S10_4962 and S18_1889 should be eliminated. Considering these two products, their profit margin and ordered quantity is low while consuming large space in warehouses.

To help the company eliminate these products, I suggest running a flash sale on these products or a discount for first-time customers. Additionally, to best accomplish this, I recommend slowly decreasing the price, being sure to remain above a 15% profit margin until the products are eliminated.

These solutions offer the following benefits for Mint Classics Company:

- Optimized space utilization: By moving products from South warehouse to West warehouse, they can take use of West warehouse's large storage capacity. This will make the most use of the available space and reduces inefficiencies in their operations.

- Streamlined operations: By removing ineffective products and consolidating warehouses, inventory management procedures are made simpler and overall operational efficiency is increased. Having similar product lines managed in the same place makes inventory control and logistics more efficient.

- Cost savings: The consolidation and reduction also eliminate unnecessary overhead expenses related to managing multiple warehouses and products, potentially saving money on facility upkeep and operating costs.
