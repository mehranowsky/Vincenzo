A simple use tool for narrow recon

Setup :
```
chmod +x ./vini.sh
```
```
./vini.sh -h
-----GO AHEAD MR.PIPINO-----
Usage: [-u] URLs mode [-p] Params mode [-d] Target domain [-a] All [-c] Cookie
```
Usage :
  just use domain name without scheme. 
  Crawling the target actively and passively :
```
./vini.sh -d example.com -u
```
  Extracting parameters from the target :
```
./vini.sh -d example.com -p
```
  Output both URLs and parameters :
```
./vini.sh -d example.com -a
```
