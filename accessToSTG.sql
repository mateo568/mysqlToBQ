# Desnormalization and access to stg 
CREATE OR REPLACE TABLE `datapath-376823.ma_dlake_dev_stg.sales` 
AS
SELECT
  cus.customerNumber,
  cus.city AS customerCity,
  cus.state as customerState,
  cus.postalCode AS customerPostalCode,
  cus.country AS customerCountry,
  cus.creditLimit,
  emp.employeeNumber,
  emp.extension,
  emp.reportsTo,
  emp.jobTitle,
  off.officeCode,
  off.city as officeCity,
  off.phone as officePhone,
  off.addressLine1 as officeAddressLine1,
  off.addressLine2 as officeAddressLine2,
  off.state as officeState,
  off.country as officeCountry,
  off.postalCode as officePostalCode,
  off.territory as officeTerritory,
  ord.orderNumber,
  ord.orderDate,
  ord.requiredDate,
  ord.shippedDate,
  ord.status,
  ord.comments,
  prd.productCode,
  prd.productName,
  prd.productLine,
  prd.productScale,
  prd.productVendor,
  prd.productDescription,
  prd.quantityInStock,
  prd.buyPrice,
  prd.MSRP,
  prdl.textDescription,
  prdl.htmlDescription,
  prdl.image,
  ordetails.quantityOrdered,
  ordetails.priceEach,
  ordetails.orderLineNumber,
  pay.checkNumber,
  pay.paymentDate,
  pay.amount,
  CURRENT_DATETIME("America/Argentina/Buenos_Aires") AS loadDT
FROM
  `datapath-376823.ma_dlake_dev_access.customers` cus
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.employees` emp
ON
  cus.salesRepEmployeeNumber = emp.employeeNumber
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.offices` off
ON
  emp.officeCode = off.officeCode
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.payments` pay
ON
  cus.customerNumber = pay.customerNumber
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.orders` ord
ON
  cus.customerNumber = ord.customerNumber
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.orderDetails` ordetails
ON
  ord.orderNumber = ordetails.orderNumber
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.products` prd
ON
  ordetails.productCode = prd.productCode
LEFT JOIN
  `datapath-376823.ma_dlake_dev_access.productlines` prdl
ON
  prd.productLine = prdl.productLine