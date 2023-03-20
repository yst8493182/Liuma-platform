ALTER TABLE `domain` DROP INDEX `environment_id`;
ALTER TABLE `function` DROP INDEX `name`;
ALTER TABLE `operation_web` DROP INDEX `project_id`;
ALTER TABLE `operation_app` DROP INDEX `project_id`;
ALTER TABLE `environment` DROP INDEX `project_id`;
ALTER TABLE `collection` DROP INDEX `project_id`;
ALTER TABLE `plan` DROP INDEX `project_id`;
ALTER TABLE `param_data` DROP INDEX `group_id`;

ALTER TABLE `function` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `operation_web` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `operation_app` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `environment` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `collection` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `plan` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `param_data` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;
ALTER TABLE `test_file` ADD `status` int(1) DEFAULT 1 COMMENT '状态 0: 删除 1: 正常' after `update_time`;