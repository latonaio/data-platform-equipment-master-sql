CREATE TABLE `data_platform_equipment_master_owner_business_partner_data`
(
    `Equipment`                int(20) NOT NULL,
  	`OwnerBusinessPartner`     int(12) NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `CreationDate`             date DEFAULT NULL,
    `BusinessPartnerEquipment` int(20) DEFAULT NULL,
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Equipment`, `OwnerBusinessPartner`, `ValidityStartDate`, `ValidityEndDate`),

    CONSTRAINT `DPFMEquipmentMasterOwnerBusinessPartnerData_fk` FOREIGN KEY (`Equipment`) REFERENCES `data_platform_equipment_master_general_data` (`Equipment`),
    CONSTRAINT `DPFMEquipmentMasterOwnerBusinessPartnerDataOwnerBP_fk` FOREIGN KEY (`OwnerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
