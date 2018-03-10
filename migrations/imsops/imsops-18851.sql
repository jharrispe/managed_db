--liquibase formatted sql

--changeset harris.p:1
--rollback UPDATE `departments` SET `delete_flag` = 'n' WHERE `dept_no` = 'd008';;
UPDATE `departments` SET `delete_flag` = 'y' WHERE `dept_no` = 'd008';
