CREATE TABLE `data_platform_equipment_master_business_partner_data`
(
    `Equipment`                  int(20) NOT NULL,
    `EquipmentPartnerObjectNmbr` int(6) NOT NULL,
  	`BusinessPartner`            int(12) NOT NULL,
    `PartnerFunction`            varchar(40) NOT NULL,
    `ValidityStartDate`          date NOT NULL,
    `ValidityEndDate`            date NOT NULL,
    `CreationDate`               date NOT NULL,
    `LastChangeDate`             date NOT NULL,
    `IsMarkedForDeletion`        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Equipment`, `EquipmentPartnerObjectNmbr`),

    CONSTRAINT `DPFMEquipmentMasterBusinessPartnerData_fk` FOREIGN KEY (`Equipment`) REFERENCES `data_platform_equipment_master_general_data` (`Equipment`),
    CONSTRAINT `DPFMEquipmentMasterBusinessPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
