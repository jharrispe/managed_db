--liquibase formatted sql

--changeset harris.p:1
UPDATE `departments` SET `dept_name` = 'Quality Assurance' WHERE `dept_no` = 'd006';
--rollback UPDATE `departments` SET `dept_name` = 'Quality Management' WHERE `dept_no` = 'd006';