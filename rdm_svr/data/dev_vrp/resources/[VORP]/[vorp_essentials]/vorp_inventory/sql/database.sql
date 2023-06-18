CREATE TABLE `loadout` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL,
	`charidentifier` INT(11) NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`ammo` VARCHAR(255) NOT NULL DEFAULT '{}',
	`components` VARCHAR(255) NOT NULL DEFAULT '[]',
	`dirtlevel` DOUBLE NULL DEFAULT 0,
	`mudlevel` DOUBLE NULL DEFAULT 0,
	`conditionlevel` DOUBLE NULL DEFAULT 0,
	`rustlevel` DOUBLE NULL DEFAULT 0,
	`used` TINYINT(4) NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	INDEX `id` (`id`)
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

CREATE TABLE `items` (
	`item` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) NOT NULL,
	`limit` INT(11) NOT NULL DEFAULT 1,
	`can_remove` TINYINT(1) NOT NULL DEFAULT 1,
	`type` VARCHAR(50) NULL DEFAULT NULL,
	`usable` TINYINT(1) NULL DEFAULT NULL,
	PRIMARY KEY (`item`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
ROW_FORMAT=DYNAMIC
;

ALTER TABLE `loadout` ADD COLUMN `dropped` INT(11) NOT NULL DEFAULT 0;
ALTER TABLE `loadout` ADD COLUMN `comps` VARCHAR(5550) NOT NULL DEFAULT '{}';
ALTER TABLE `loadout` ADD COLUMN `used2` tinyint(4) NOT NULL DEFAULT 0;

-- if you need to upgrade desc in items
--ALTER TABLE `items` ADD COLUMN `desc` VARCHAR(5550) NOT NULL DEFAULT 'nice item';
