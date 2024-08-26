# Changelog

## [6.2.1](https://github.com/equinor/terraform-azurerm-acr/compare/v6.2.0...v6.2.1) (2024-08-26)


### Miscellaneous Chores

* update variable descriptions and add features list ([#75](https://github.com/equinor/terraform-azurerm-acr/issues/75)) ([ea06122](https://github.com/equinor/terraform-azurerm-acr/commit/ea06122696c5b9821c4838b03472736435b9b7fd))

## [6.2.0](https://github.com/equinor/terraform-azurerm-acr/compare/v6.1.0...v6.2.0) (2024-02-27)


### Features

* Disable metrics by default ([#68](https://github.com/equinor/terraform-azurerm-acr/issues/68)) ([c75f59d](https://github.com/equinor/terraform-azurerm-acr/commit/c75f59ddadaf287774dfe4af7f4329a0e0248807))

## [6.1.0](https://github.com/equinor/terraform-azurerm-acr/compare/v6.0.1...v6.1.0) (2024-01-05)


### Features

* configure networking ([#65](https://github.com/equinor/terraform-azurerm-acr/issues/65)) ([107610d](https://github.com/equinor/terraform-azurerm-acr/commit/107610d4b962e80c4edfcf487c12ee5fbd271f8a))
* simplify geo-replication configuration ([#63](https://github.com/equinor/terraform-azurerm-acr/issues/63)) ([d318c25](https://github.com/equinor/terraform-azurerm-acr/commit/d318c25c3e23ad1bdc63573c6333533ea67e1df0))

## [6.0.1](https://github.com/equinor/terraform-azurerm-acr/compare/v6.0.0...v6.0.1) (2023-12-20)


### Bug Fixes

* remove diagnostic setting retention policies ([#61](https://github.com/equinor/terraform-azurerm-acr/issues/61)) ([3f66a5c](https://github.com/equinor/terraform-azurerm-acr/commit/3f66a5c3485faab1630eac36ef1131ce395221b0))

## [6.0.0](https://github.com/equinor/terraform-azurerm-acr/compare/v5.1.1...v6.0.0) (2023-09-14)


### ⚠ BREAKING CHANGES

* don't create webhooks ([#50](https://github.com/equinor/terraform-azurerm-acr/issues/50))

### Features

* don't create webhooks ([#50](https://github.com/equinor/terraform-azurerm-acr/issues/50)) ([7c2751c](https://github.com/equinor/terraform-azurerm-acr/commit/7c2751c2b836da2025a7f657357b95210e4987c4)), closes [#44](https://github.com/equinor/terraform-azurerm-acr/issues/44)

## [5.1.1](https://github.com/equinor/terraform-azurerm-acr/compare/v5.1.0...v5.1.1) (2023-08-31)


### Bug Fixes

* don't specify Log Analytics destination type ([#45](https://github.com/equinor/terraform-azurerm-acr/issues/45)) ([7708870](https://github.com/equinor/terraform-azurerm-acr/commit/770887088faf56165f0d19c18f1fbe377efee36c))

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
