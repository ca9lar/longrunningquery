# longrunningquery
This script will do the following:

Identify queries that are taking longer than the specified threshold to execute.
Get the query plan for each long-running query.
Get the server status variables that may be affecting query performance.
To run this script, you can connect to the MySQL server using the mysql command-line client and execute the script using the source command:

```
mysql -u username -p password
source longrunningquery.sql
```
This script is just a basic example, and you may want to customize it to fit your specific needs and gather more detailed information as needed. For example, you can add additional queries to gather more information about the long-running queries or the server status variables.
