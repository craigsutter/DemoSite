--import statements for mysql
LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/customer_small.csv' INTO TABLE blc_customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/customer_anonymous_small.csv' INTO TABLE blc_customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/customer_role_small.csv' INTO TABLE blc_customer_role FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ROLE_ID,CUSTOMER_ID,ROLE_ID);