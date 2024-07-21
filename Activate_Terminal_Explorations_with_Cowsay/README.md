# Cowsay and Introduction to Getting Free Software

Most software for linux is free, and the most common method to get new software
is with:

```sh
sudo apt install <software-name>
```

## Cowsay



TODO Add image


## How to search for new software

To search for new software do a cache search:

```sh
sudo apt-cache search nmap
```

This list is too long, so filter just for the word your looking for `nmap`

```sh
sudo apt-cache search nmap | grep nmap
```

`grep` is a tool which just limits to the lines which have the search string.

```
# sudo apt-cache search nmap | grep nmap
golang-github-malfunkt-iprange-dev - IPv4 address parser for the nmap format
libcoq-mathcomp-finmap - finite sets and maps extension for Mathematical Components
libnmap-parser-perl - module to parse nmap scan results with perl
librust-cpp-synmap-dev - Sourcemap and full crate parsing support for `cpp_syn` - Rust source code
libwlocate-dev - Library for doing location lookup based on free openwlanmap.org data
libwlocate0 - Library for doing location lookup based on free openwlanmap.org data
nmap - The Network Mapper
nmap-common - Architecture independent files for nmap
nmapsi4 - graphical interface to nmap, the network scanner
python-libnmap-doc - Python NMAP Library (common documentation)
python3-libnmap - Python 3 NMAP library
python3-nmap - Python3 interface to the Nmap port scanner
tophat-recondition - post-processor for TopHat unmapped reads
```

we want just nmap, so we can install with:

```sh
sudo apt install nmap
```
