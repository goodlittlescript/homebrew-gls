homebrew-gls
============

Good Little Script Formulae

## Usage

Tap and example install:

    brew tap goodlittlescript/homebrew-gls
    brew install ts
    brew test ts

Example uninstall and untap:

    brew uninstall ts
    brew untap goodlittlescript/homebrew-gls

## Notes

To make a release:

* Make a release in GitHub
* Download tar.gz
* Calculate sha256 using `shasum -a 256 release.tar.gz`
* Update values in formula
* brew update && brew upgrade FORMULA
