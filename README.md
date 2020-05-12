# wanip
Simple bash utility for fetching wan ip (using dig)

## Install
```
cat wanip.sh >> ~/.bashrc
source ~/.bashrc
```

## Usage
```
sigg3@pop-os:~/bash/wanip$ wanip 
WAN: 8.8.8.8
```
## What
`wanip` uses dig to lookup the wan ip your ISP set.
It saves the WAN ip to ~/.config/wanip file, and will give visual cue if changed:

```
sigg3@pop-os:~$ wanip 
WAN: 88.88.88.88 (changed from 8.8.8.8)
```
