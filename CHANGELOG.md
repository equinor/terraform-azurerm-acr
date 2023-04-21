# Changelog

## [5.1.0](https://github.com/equinor/terraform-azurerm-acr/compare/v5.0.0...v5.1.0) (2023-04-21)


### Features

* set diagnostic setting enabled log categories ([#40](https://github.com/equinor/terraform-azurerm-acr/issues/40)) ([9a527e7](https://github.com/equinor/terraform-azurerm-acr/commit/9a527e78e94fead31dae2e372ac96f74a3d1558a))

## [5.0.0](https://github.com/equinor/terraform-azurerm-acr/compare/v4.4.0...v5.0.0) (2023-02-15)


### ⚠ BREAKING CHANGES

* admin account disabled by default. To upgrade, set `admin_enabled` to `true`.

### Features

* disable acr admin account ([#37](https://github.com/equinor/terraform-azurerm-acr/issues/37)) ([6b5547c](https://github.com/equinor/terraform-azurerm-acr/commit/6b5547c7f76fc406da37f43ecabc9fca9122fe74))

## [4.4.0](https://github.com/equinor/terraform-azurerm-acr/compare/v4.3.0...v4.4.0) (2023-02-08)


### Features

* set log analytics destination type and update min. provider version ([#30](https://github.com/equinor/terraform-azurerm-acr/issues/30)) ([f4ebb08](https://github.com/equinor/terraform-azurerm-acr/commit/f4ebb08b2b34a68f4f3709e694a1c2aff72e63ed))


### Bug Fixes

* set log analytics destination type to null by default ([#32](https://github.com/equinor/terraform-azurerm-acr/issues/32)) ([6c33028](https://github.com/equinor/terraform-azurerm-acr/commit/6c3302882f1e8822476e2b78a867f0642804f732))
