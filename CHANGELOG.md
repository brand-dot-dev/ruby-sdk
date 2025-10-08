# Changelog

## 0.8.0 (2025-10-08)

Full Changelog: [v0.7.0...v0.8.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.7.0...v0.8.0)

### Features

* **api:** api update ([fa5a65e](https://github.com/brand-dot-dev/ruby-sdk/commit/fa5a65e269ef946b97bf9fe7f0e9f8dd1239b4e3))
* **api:** api update ([3c4ec01](https://github.com/brand-dot-dev/ruby-sdk/commit/3c4ec013b262955a26bc2a86100a07b0a28c8e9e))
* **api:** api update ([e4977c6](https://github.com/brand-dot-dev/ruby-sdk/commit/e4977c64436d23aee0fee29e2a72d912c09e626f))


### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([7135624](https://github.com/brand-dot-dev/ruby-sdk/commit/713562474e8ec92fde52cde5329f45c88ba0c594))
* coroutine leaks from connection pool ([a6e3480](https://github.com/brand-dot-dev/ruby-sdk/commit/a6e348070e779b39f9b80b0ec2fbc9f05910b4b4))

## 0.7.0 (2025-09-27)

Full Changelog: [v0.6.0...v0.7.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.6.0...v0.7.0)

### Features

* **api:** api update ([1e777a7](https://github.com/brand-dot-dev/ruby-sdk/commit/1e777a71af3ff2e5f0cad6223d05bfcc183fc2fd))
* expose response headers for both streams and errors ([569c645](https://github.com/brand-dot-dev/ruby-sdk/commit/569c645d77a1432570f2d47ac33c4b30197be2ef))


### Bug Fixes

* shorten multipart boundary sep to less than RFC specificed max length ([a2e1171](https://github.com/brand-dot-dev/ruby-sdk/commit/a2e11713038013930d3b5b44d4665326e7bafece))


### Performance Improvements

* faster code formatting ([d65a43b](https://github.com/brand-dot-dev/ruby-sdk/commit/d65a43b02c1ebe517f7119c984a540e435fc2a03))


### Chores

* allow fast-format to use bsd sed as well ([88e0856](https://github.com/brand-dot-dev/ruby-sdk/commit/88e0856c917a0bb60e062fafe6a04753c8fb8059))
* do not install brew dependencies in ./scripts/bootstrap by default ([d067d3a](https://github.com/brand-dot-dev/ruby-sdk/commit/d067d3a622289a081516f2565b3bbd420586e8ac))
* **internal:** codegen related update ([2629fa5](https://github.com/brand-dot-dev/ruby-sdk/commit/2629fa5004386cd943bbba2da8635b10593fcdca))

## 0.6.0 (2025-09-14)

Full Changelog: [v0.5.0...v0.6.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.5.0...v0.6.0)

### Features

* **api:** api update ([f3a2056](https://github.com/brand-dot-dev/ruby-sdk/commit/f3a205642cd53962780b1789830c1d99665bb1b0))

## 0.5.0 (2025-09-07)

Full Changelog: [v0.4.0...v0.5.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.4.0...v0.5.0)

### Features

* **api:** manual updates ([474915a](https://github.com/brand-dot-dev/ruby-sdk/commit/474915acc723c741b0de7ce1dcb64e0bc331435c))

## 0.4.0 (2025-09-07)

Full Changelog: [v0.3.2...v0.4.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.3.2...v0.4.0)

### Features

* **api:** api update ([9be3c02](https://github.com/brand-dot-dev/ruby-sdk/commit/9be3c02e8fb2cca9d96e153d2bda411423e483ad))

## 0.3.2 (2025-08-25)

Full Changelog: [v0.3.1...v0.3.2](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.3.1...v0.3.2)

### Chores

* add json schema comment for rubocop.yml ([5262bda](https://github.com/brand-dot-dev/ruby-sdk/commit/5262bdacb001ad4ad901f7bd79c782a04783afdc))

## 0.3.1 (2025-08-20)

Full Changelog: [v0.3.0...v0.3.1](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.3.0...v0.3.1)

### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([11b69b1](https://github.com/brand-dot-dev/ruby-sdk/commit/11b69b1415dbd9d3abd7ca82420a9c8f25e178ac))

## 0.3.0 (2025-08-19)

Full Changelog: [v0.2.1...v0.3.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.2.1...v0.3.0)

### Features

* **api:** api update ([300cd20](https://github.com/brand-dot-dev/ruby-sdk/commit/300cd20109a1cfb9a20d6f084fd663a4f460b9a1))
* **api:** api update ([63abe64](https://github.com/brand-dot-dev/ruby-sdk/commit/63abe64a9fb4f188a7667e25a135c7cd16867c10))
* **api:** api update ([221ec47](https://github.com/brand-dot-dev/ruby-sdk/commit/221ec47349dc4c937bd32e92e8ecd1d7d8bd9321))


### Chores

* collect metadata from type DSL ([1c0ddc6](https://github.com/brand-dot-dev/ruby-sdk/commit/1c0ddc66bcacc3fedc7044759dc99bb6d374d71e))
* **internal:** codegen related update ([f544144](https://github.com/brand-dot-dev/ruby-sdk/commit/f544144eee9d1c3bc1e879a80a9913f51c83f010))
* **internal:** update comment in script ([1c17fb4](https://github.com/brand-dot-dev/ruby-sdk/commit/1c17fb44ee56f6f8b797f68806cd5dfbeaf66b17))
* update @stainless-api/prism-cli to v5.15.0 ([42f525c](https://github.com/brand-dot-dev/ruby-sdk/commit/42f525cbd0b0d4418d8cd553b05688a03c06a3ec))

## 0.2.1 (2025-08-01)

Full Changelog: [v0.2.0...v0.2.1](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.2.0...v0.2.1)

### Chores

* **internal:** increase visibility of internal helper method ([cfabb97](https://github.com/brand-dot-dev/ruby-sdk/commit/cfabb971de6365cbc73952eb438d4d9ecfb5407c))

## 0.2.0 (2025-07-31)

Full Changelog: [v0.1.0...v0.2.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0...v0.2.0)

### Features

* **api:** manual updates ([9e2f31d](https://github.com/brand-dot-dev/ruby-sdk/commit/9e2f31dc4082586468781ae4d25c58155eb2d119))

## 0.1.0 (2025-07-29)

Full Changelog: [v0.0.2...v0.1.0](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.0.2...v0.1.0)

### Features

* **api:** manual updates ([16b9bdc](https://github.com/brand-dot-dev/ruby-sdk/commit/16b9bdcdbcbac819a1120c93399195b102db34ed))


### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([b780fe6](https://github.com/brand-dot-dev/ruby-sdk/commit/b780fe622148d3af2db69a59c16470ebf82b3702))


### Chores

* **internal:** version bump ([d7516ea](https://github.com/brand-dot-dev/ruby-sdk/commit/d7516ea2cf7f6c5b21236d90fca254a91476d5ad))
* update contribute.md ([05a6bc4](https://github.com/brand-dot-dev/ruby-sdk/commit/05a6bc4264abb72f63d72ee43a0ba2fac7fd0511))

## 0.0.2 (2025-07-21)

Full Changelog: [v0.0.1...v0.0.2](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.0.1...v0.0.2)

### Chores

* **internal:** version bump ([c8553b7](https://github.com/brand-dot-dev/ruby-sdk/commit/c8553b728303284cda46b2a980743c5533932fdd))

## 0.0.1 (2025-07-21)

Full Changelog: [v0.1.0-alpha.13...v0.0.1](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.13...v0.0.1)

### Features

* **api:** manual updates ([cfaabba](https://github.com/brand-dot-dev/ruby-sdk/commit/cfaabbab93b68ba4926f78560d759d788e4b4b98))


### Chores

* **internal:** allow streams to also be unwrapped on a per-row basis ([99d7893](https://github.com/brand-dot-dev/ruby-sdk/commit/99d7893d01a3e111d49fb7c39e53bc9dd524f6b6))
* **internal:** version bump ([d51ca58](https://github.com/brand-dot-dev/ruby-sdk/commit/d51ca5841eb432576fb2e251d4ebdab02cfb1ad7))

## 0.1.0-alpha.13 (2025-06-29)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Chores

* **internal:** version bump ([20129a5](https://github.com/brand-dot-dev/ruby-sdk/commit/20129a56c65cbf2bbe2e6f15ea146213a0b41aa0))

## 0.1.0-alpha.12 (2025-06-29)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **api:** manual updates ([ed09624](https://github.com/brand-dot-dev/ruby-sdk/commit/ed09624d1e608e9a6f1294f385341483d4973a3e))


### Chores

* **ci:** only run for pushes and fork pull requests ([4356075](https://github.com/brand-dot-dev/ruby-sdk/commit/4356075a3db29b2d44ea84ad3abfc37491ec7301))
* **internal:** version bump ([d186e95](https://github.com/brand-dot-dev/ruby-sdk/commit/d186e95c03f25e3f0c07a43e0dab6c40970769e4))

## 0.1.0-alpha.11 (2025-06-27)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Bug Fixes

* **ci:** release-doctor — report correct token name ([d8ea78e](https://github.com/brand-dot-dev/ruby-sdk/commit/d8ea78ebf0d975cac2720b3441e4cc98e49e348c))


### Chores

* **internal:** version bump ([41f18be](https://github.com/brand-dot-dev/ruby-sdk/commit/41f18bedff6bd714f0679df48e7b23e0995916ce))

## 0.1.0-alpha.10 (2025-06-19)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* **api:** manual updates ([7d6d67c](https://github.com/brand-dot-dev/ruby-sdk/commit/7d6d67c7b7a3159e7793e2032dd49f9fe491ecce))


### Chores

* **internal:** version bump ([1cd51db](https://github.com/brand-dot-dev/ruby-sdk/commit/1cd51dbfd4ecb991f8513c180db3eb2b9f8d4a94))

## 0.1.0-alpha.9 (2025-06-19)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* **api:** manual updates ([169c21b](https://github.com/brand-dot-dev/ruby-sdk/commit/169c21b016f153befa54e0d2a68fbe0a8fe6df7e))
* **api:** manual updates ([e3f5264](https://github.com/brand-dot-dev/ruby-sdk/commit/e3f5264df830ac3cc62db19ba13050d7822f0259))


### Bug Fixes

* issue where we cannot mutate arrays on base model derivatives ([ebaaa42](https://github.com/brand-dot-dev/ruby-sdk/commit/ebaaa42de2ed5b3f20120dcba81a42e85cba778a))


### Chores

* **ci:** enable for pull requests ([1e06613](https://github.com/brand-dot-dev/ruby-sdk/commit/1e066138d45a47d25eaf469e9a472279252ada3a))
* **internal:** version bump ([90fada6](https://github.com/brand-dot-dev/ruby-sdk/commit/90fada6f55ae8d314784042718e7de258694575b))

## 0.1.0-alpha.8 (2025-06-12)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Chores

* **ci:** link to correct github repo ([f6c0a8c](https://github.com/brand-dot-dev/ruby-sdk/commit/f6c0a8c7bfa4a6354bec596cca3b8484797bb296))
* **internal:** version bump ([1094c6a](https://github.com/brand-dot-dev/ruby-sdk/commit/1094c6ac192a8b7fe3d774e5fe2d9890fdbc9062))

## 0.1.0-alpha.7 (2025-06-08)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Chores

* **internal:** version bump ([d704a75](https://github.com/brand-dot-dev/ruby-sdk/commit/d704a75754d47d3ffa7797e96ae02cc4145b7b59))

## 0.1.0-alpha.6 (2025-06-08)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** manual updates ([aa20a00](https://github.com/brand-dot-dev/ruby-sdk/commit/aa20a0054ed6afaea030f1391f50b94b9e019b17))


### Chores

* **internal:** version bump ([223cabb](https://github.com/brand-dot-dev/ruby-sdk/commit/223cabb690bebf1e41c54c6cc1c3367b81d9bb98))

## 0.1.0-alpha.5 (2025-06-06)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **api:** manual updates ([d07e957](https://github.com/brand-dot-dev/ruby-sdk/commit/d07e957a8e10c10626468008285953a205b6dafc))


### Chores

* **internal:** version bump ([6b3a243](https://github.com/brand-dot-dev/ruby-sdk/commit/6b3a2437ab0592fee82bc4829e048937f54d9e18))

## 0.1.0-alpha.4 (2025-06-06)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* **api:** manual updates ([05a611f](https://github.com/brand-dot-dev/ruby-sdk/commit/05a611fe140468f965dbb41c0d8250d3dd84a9aa))


### Chores

* **internal:** codegen related update ([b850fe2](https://github.com/brand-dot-dev/ruby-sdk/commit/b850fe270f6c9e7d63b380a6bdcdb9c0c6b6b65f))

## 0.1.0-alpha.3 (2025-06-06)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** manual updates ([7410667](https://github.com/brand-dot-dev/ruby-sdk/commit/7410667d18ceacfb171c91eb14a4825f77e3487b))


### Chores

* **internal:** codegen related update ([08a0fc4](https://github.com/brand-dot-dev/ruby-sdk/commit/08a0fc45756634925a18266d526b41a217b37492))

## 0.1.0-alpha.2 (2025-06-05)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** manual updates ([6613bcd](https://github.com/brand-dot-dev/ruby-sdk/commit/6613bcdddf846a0dbcb1e507da7ec58c93e4125d))


### Bug Fixes

* `to_sorbet_type` should not return branded types ([0047f7c](https://github.com/brand-dot-dev/ruby-sdk/commit/0047f7ce754514e6c5ac04546aa262d1e4df68f5))
* default content-type for text in multi-part formdata uploads should be text/plain ([c39a8a7](https://github.com/brand-dot-dev/ruby-sdk/commit/c39a8a78f5445fa88de3b9f765d6211889ba78ef))

## 0.1.0-alpha.1 (2025-06-02)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/brand-dot-dev/ruby-sdk/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([1c2a095](https://github.com/brand-dot-dev/ruby-sdk/commit/1c2a09538494964e67752f572ed11a41f4bf4e29))


### Chores

* configure new SDK language ([4b2d19e](https://github.com/brand-dot-dev/ruby-sdk/commit/4b2d19e3ea9342c01529655c0231e1258c04de35))
* sync repo ([fc86136](https://github.com/brand-dot-dev/ruby-sdk/commit/fc86136bdab0b1c30529662a3dedb8016726d8bc))
