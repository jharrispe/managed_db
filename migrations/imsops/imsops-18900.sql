--liquibase formatted sql

--changeset harris.p:1
--rollback ;
ALTER TABLE `departments` ADD `void_flag` CHAR(1) NOT NULL DEFAULT 'n' AFTER `delete_flag`;
