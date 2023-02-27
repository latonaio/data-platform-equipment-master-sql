CREATE TABLE `data_platform_equipment_master_owner_business_partner_data`
(
    `Equipment`                int(20) NOT NULL,
  	`OwnerBusinessPartner`     int(12) NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `CreationDate`             date DEFAULT NULL,
    `BusinessPartnerEquipment` int(20) DEFAULT NULL,
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Equipment`, `OwnerBusinessPartner`, `EquipmentPartnerObjectNmbr`),

    CONSTRAINT `DPFMEquipmentMasterOwnerBusinessPartnerData_fk` FOREIGN KEY (`Equipment`) REFERENCES `data_platform_equipment_master_genaral_data` (`Equipment`),
    CONSTRAINT `DPFMEquipmentMasterOwnerBusinessPartnerDataOwnerBusinessPartner_fk` FOREIGN KEY (`OwnerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
