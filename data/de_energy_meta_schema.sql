-- HILFSTABELLE ENERGIETRÄGER MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_energy_source_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_energy_source_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE BUNDESLAND MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_energy_state_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_energy_state_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE LAND MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_energy_country_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_energy_country_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE NETZBETREIBERPRÜFUNG MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_network_operator_audit_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_network_operator_audit_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE LAGE MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_energy_location_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_energy_location_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE EINSPEISUNGSART MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_energy_supply_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_energy_supply_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE HERSTELLER MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_turbine_manufacturer_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_turbine_manufacturer_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE LEISTUNGSBEGRENZUNG MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_power_limitation_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_power_limitation_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- HILFSTABELLE TECHNOLOGIE STROMERZEUGUNG MARKTSTAMMDATENREGISTER
DROP TABLE IF EXISTS de_power_technology_meta CASCADE;

CREATE TABLE IF NOT EXISTS de_power_technology_meta (
    id INT NOT NULL,
    name VARCHAR
);


-- UNIQUE INDEX
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_energy_source_id ON de_energy_source_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_energy_state_id ON de_energy_state_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_network_operator_audit_id ON de_network_operator_audit_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_energy_country_id ON de_energy_country_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_energy_location_id ON de_energy_location_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_energy_supply_id ON de_energy_supply_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_wind_turbine_mnfr_id ON de_turbine_manufacturer_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_power_limitation_id ON de_power_limitation_meta (id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_unq_power_technology_id ON de_power_technology_meta (id);
