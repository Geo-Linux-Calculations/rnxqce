![GitHub release (latest by date)](https://img.shields.io/github/v/release/Geo-Linux-Calculations/rnxqce)
![GitHub Release Date](https://img.shields.io/github/release-date/Geo-Linux-Calculations/rnxqce)
![GitHub repo size](https://img.shields.io/github/repo-size/Geo-Linux-Calculations/rnxqce)
![GitHub all releases](https://img.shields.io/github/downloads/Geo-Linux-Calculations/rnxqce/total)
![GitHub](https://img.shields.io/github/license/Geo-Linux-Calculations/rnxqce)

# RNXQCE

## Description
RNXQCE is a comprehensive toolkit for solving many problems when preprocessing GNSS data.
As we all know, TEQC stopped updated after 2019-02-25.
Thus I make this software.
It can check quality for both RINEX 2 and RINEX 3.
If you have any problems or suggestions when using it, please get in touch with me.
My email address is 2016301610237@whu.edu.cn

## Build
```sh
make || make || make || make || make
```

## Usage
```sh
./rnxqce -rnxo bjfs1000.20o -qc -rnxn brdm100.20p -freq G12 C26 R12 E25 -cutoff 10 
./rnxqce -rnxo bjfs1000.20o -mr -hd.ant TRM59800.00 -hd.rec TRIMBLE^NETR9  -hd.enu 0.0 0.0 0.0 
```

## Example data
See [rnxqce-data](https://github.com/Geo-Linux-Calculations/rnxqce-data)
