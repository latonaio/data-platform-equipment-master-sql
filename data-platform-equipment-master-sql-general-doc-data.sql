CREATE TABLE `data_platform_equipment_master_general_doc_data`
(
  `Equipment`                      int(20) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

  PRIMARY KEY (`Equipment`, `DocType`, `DocVersionID`, `DocID`),

  CONSTRAINT `DataPlatformEquipmentMasterGeneralDocData_fk` FOREIGN KEY (`Equipment`) REFERENCES `data_platform_equipment_master_general_data` (`Equipment`),
  CONSTRAINT `DataPlatformEquipmentMasterGeneralDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
  CONSTRAINT `DataPlatformEquipmentMasterGeneralDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
