CREATE TABLE `data_platform_equipment_master_general_data`
(
    `Equipment`                          int(20) NOT NULL,
    `ValidityStartDate`                  date NOT NULL,
    `ValidityEndDate`                    date NOT NULL,
    `EquipmentName`                      varchar(200) NOT NULL,
    `EquipmentType`                      varchar(10) DEFAULT NULL,
    `EquipmentCategory`                  varchar(1) DEFAULT NULL,
    `TechnicalObjectType`                varchar(10) DEFAULT NULL,
    `GrossWeight`                        float(15) DEFAULT NULL,
    `NetWeight`                          float(15) DEFAULT NULL,
    `WeightUnit`                         varchar(3) DEFAULT NULL,
    `SizeOrDimensionText`                varchar(100) DEFAULT NULL,
    `InventoryNumber`                    varchar(25) DEFAULT NULL,
    `OperationStartDate`                 date DEFAULT NULL,
    `OperationStartTime`                 time DEFAULT NULL,
    `OperationEndDate`                   date DEFAULT NULL,
    `OperationEndTime`                   time DEFAULT NULL,
    `EquipmentStandardID`                varchar(18) DEFAULT NULL,
    `EquipmentIndustryStandardName`      varchar(200) DEFAULT NULL,
    `BarcodeType`                        varchar(20) DEFAULT NULL,
    `AcquisitionDate`                    date DEFAULT NULL,
    `Manufacturer`                       int(12) DEFAULT NULL,
    `ManufacturedCountry`                varchar(3) DEFAULT NULL,
    `ConstructionYear`                   int(4) DEFAULT NULL,
    `ConstructionMonth`                  int(2) DEFAULT NULL,
    `ConstructionDate`                   date DEFAULT NULL,
    `ManufacturerPartNmbr`               varchar(100) DEFAULT NULL,
    `ManufacturerSerialNumber`           varchar(100) DEFAULT NULL,
    `MaintenancePlantBusinessPartner`    int(12) NOT NULL,
    `MaintenancePlant`                   varchar(4) NOT NULL,
    `AssetLocation`                      varchar(100) DEFAULT NULL,
    `AssetRoom`                          varchar(100) DEFAULT NULL,
    `PlantSection`                       varchar(100) DEFAULT NULL,
    `WorkCenter`                         int(16) DEFAULT NULL,
    `Project`                            int(16) DEFAULT NULL,
    `WBSElement`                         int(8) DEFAULT NULL,
    `MaintenancePlannerGroup`            varchar(3) DEFAULT NULL,
    `CatalogProfile`                     varchar(9) DEFAULT NULL,
    `FunctionalLocation`                 varchar(30) DEFAULT NULL,
    `SuperordinateEquipment`             int(20) DEFAULT NULL,
    `EquipInstallationPositionNmbr`      varchar(10) DEFAULT NULL,
    `BillOfMaterial`                     int(16) DEFAULT NULL,
    `BillOfMaterialItem`                 int(6) DEFAULT NULL,
    `EquipmentIsAvailable`               tinyint(1) DEFAULT NULL,
    `EquipmentIsInstalled`               tinyint(1) DEFAULT NULL,
    `EquipHasSubOrdinateEquipment`       tinyint(1) DEFAULT NULL,
    `MasterFixedAsset`                   varchar(10) DEFAULT NULL,
    `FixedAsset`                         varchar(4) DEFAULT NULL,
    `CreationDate`                       date NOT NULL,
    `LastChangeDate`                     date NOT NULL,
    `IsMarkedForDeletion`                tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Equipment`),
    
    CONSTRAINT `DPFMEquipmentMasterGeneralDataEquipmentType_fk` FOREIGN KEY (`EquipmentType`) REFERENCES `data_platform_equipment_type_equipment_type_data` (`EquipmentType`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataWeightUnit_fk` FOREIGN KEY (`WeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataManufacturer_fk` FOREIGN KEY (`Manufacturer`) REFERENCES `data_platform_business_partner_genaral_data` (`BusinessPartner`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataManufacturedCountry_fk` FOREIGN KEY (`ManufacturedCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataMaintenancePlant_fk` FOREIGN KEY (`MaintenancePlantBusinessPartner`, `MaintenancePlant`) REFERENCES `data_platform_plant_genaral_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataWorkCenter_fk` FOREIGN KEY (`WorkCenter`) REFERENCES `data_platform_work_center_genaral_data` (`WorkCenter`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataBillOfMaterial_fk` FOREIGN KEY (`BillOfMaterial`) REFERENCES `data_platform_bill_of_material_header_data` (`BillOfMaterial`),
    CONSTRAINT `DPFMEquipmentMasterGeneralDataBillOfMaterialItem_fk` FOREIGN KEY (`BillOfMaterial`, `BillOfMaterialItem`) REFERENCES `data_platform_bill_of_material_item_data` (`BillOfMaterial`, `BillOfMaterialItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
