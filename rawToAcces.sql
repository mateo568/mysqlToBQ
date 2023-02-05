# Se expluyen algunos campos con informacion sensible

# Carga tabla customer RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.customers` 
AS 
SELECT
  customerNumber,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.customers`;


# Carga tabla employees RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.employees` 
AS 
SELECT
  employeeNumber,
  extension,
  officeCode,
  reportsTo,
  jobTitle,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.employees`;

  # Carga tabla offices RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.offices` 
AS 
SELECT
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.offices`;


  # Carga tabla orderDetails RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.orderDetails` 
AS 
SELECT
  orderNumber,
  productCode,
  quantityOrdered,
  priceEach,
  orderLineNumber,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.orderDetails`;


  # Carga tabla orders RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.orders` 
AS 
SELECT
  orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  customerNumber,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.orders`;


  # Carga tabla payments RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.payments` 
AS 
SELECT
  customerNumber,
  checkNumber,
  paymentDate,
  amount,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.payments`;

  # Carga tabla productlines RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.productlines` 
AS 
SELECT
  productLine,
  textDescription,
  htmlDescription,
  image,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.productlines`;


  # Carga tabla products RAW to ACCESS
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_access.products` 
AS 
SELECT
  productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT,
FROM
  `datapath-376823.ma_dlake_dev_raw.products`;




