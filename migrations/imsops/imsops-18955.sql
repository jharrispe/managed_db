--liquibase formatted sql

--changeset harris.p:1
--rollback ALTER TABLE `departments` DROP `void_flag`;
ALTER TABLE `departments` ADD `void_flag` CHAR(1) NOT NULL DEFAULT 'n' AFTER `delete_flag`;

--changeset harris.p:2
--rollback ALTER TABLE `departments` DROP `unknown_flag`;
ALTER TABLE `departments` ADD `unknown_flag` CHAR(1) NOT NULL DEFAULT 'n' AFTER `void_flag`;
