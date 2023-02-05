# mysqlToBQ
Proceso de ingesa de datos desde mysql a bigquery, utilizando cloud functions y ptyhon 3.9
Consultas programadas desde la capa raw hacia access y luego desnormalizacion para crear tablon en capa staging.
El proceso esta orquestado por cloud scheduling.
Se creo una cloud functions para cada tabla.
