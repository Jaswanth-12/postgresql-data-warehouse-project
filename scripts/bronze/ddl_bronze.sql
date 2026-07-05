CREATE TABLE bronze.crm_cust_info (
    cst_id             INT,
    cst_key            VARCHAR(50),
    cst_firstname      VARCHAR(50),
    cst_lastname       VARCHAR(50),
    cst_material_status VARCHAR(50),
    cst_gndr           VARCHAR(50),
    cst_create_date    DATE
);

CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
	prd_key VARCHAR(50),
	prd_nm VARCHAR(50),
	prd_cost INT,
	prd_line VARCHAR(50),
	prd_start_dt DATE,
	prd_end_dt DATE
);

CREATE TABLE bronze.crm_sales_details (
	sls_ord_num VARCHAR(50),
	sls_prd_key VARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

CREATE TABLE bronze.erp_cust_az12 (
	cid VARCHAR(50),
	bdate DATE,
	gen VARCHAR(50)
);

CREATE TABLE bronze.erp_loc_a101 (
	cid	VARCHAR(50),
	cntry	VARCHAR(50)
);

CREATE TABLE bronze.erp_px_cat_g1v2 (
	id VARCHAR(50),
	cat	VARCHAR(50),
	subcat	VARCHAR(50),
	maintenance	VARCHAR(50)
);

SELECT * FROM bronze.crm_cust_info;

SELECT * FROM bronze.crm_prd_info;

SELECT * FROM bronze.crm_sales_details;

SELECT * FROM bronze.erp_cust_az12;

SELECT * FROM bronze.erp_loc_a101;

SELECT * FROM bronze.erp_px_cat_g1v2;

CREATE OR REPLACE PROCEDURE bronze.count_table_rows(tn VARCHAR)
LANGUAGE plpgsql
AS $$
DECLARE
	cnt INT := 0;
	start_time TIMESTAMPTZ;
	end_time TIMESTAMPTZ;
	time_taken INTERVAL;
BEGIN
	-- 1. Capture the exact start time
	start_time := clock_timestamp();

	-- 2. Execute the dynamic count query
	EXECUTE 'SELECT COUNT(*) FROM bronze.' || quote_ident(tn)
	INTO cnt;

	-- 3. Capture the exact end time
	end_time := clock_timestamp();
	
	-- 4. Calculate the difference
	time_taken := end_time - start_time;

	-- 5. Display both the row count and the execution duration
	RAISE NOTICE 'The table bronze.% contains exactly % rows.', tn, cnt;
	RAISE NOTICE 'Time taken by query: %', time_taken;
END;
$$;

CALL bronze.count_table_rows('crm_sales_details');
CALL bronze.count_table_rows('erp_loc_a101');
