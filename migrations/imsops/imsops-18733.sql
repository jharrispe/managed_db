--liquibase formatted sql

--changeset harris.p:1
--rollback ALTER TABLE `departments` DROP `delete_flag`;
ALTER TABLE `departments` ADD `delete_flag` CHAR(1) NOT NULL DEFAULT 'n' AFTER `dept_name`;

