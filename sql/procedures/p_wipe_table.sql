--
-- UNSAFE - THIS PROCEDURE WIPES A TABLE PERMANENTLY
--

-- Trigger DDL Statements
DELIMITER $$

-- Drop the previously made procedure
DROP PROCEDURE IF EXISTS p_wipe_table $$
-- Create the procedure
CREATE PROCEDURE p_wipe_table (IN p_table VARCHAR(100))
-- Start the procedure
BEGIN
-- Prepare the query string
set @query1 = CONCAT('ALTER TABLE ', p_table ,' AUTO_INCREMENT=1;');
set @query2 = CONCAT('truncate ', p_table, '; ');
-- Allow to delete whole tables
SET SQL_SAFE_UPDATES = 0;
-- Prepare executing the actual query
PREPARE stmt1 FROM @query1;
PREPARE stmt2 FROM @query2;
-- Execute the statement
EXECUTE stmt1;
EXECUTE stmt2;
-- Remove the variable
DEALLOCATE PREPARE stmt1;
DEALLOCATE PREPARE stmt2;
-- Set it back to it's previous state
SET SQL_SAFE_UPDATES = 1;
END $$

DELIMITER ;