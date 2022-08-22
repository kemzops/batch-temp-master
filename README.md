
![Logo](https://github.com/azizmjaber02/batch-temp-master/blob/main/banner.png?raw=true)


# BatchTempMaster - v1.0.0

Batch script to remove temporary files/folders fast & configurable


## Features

- Easy & Fast to use
- Config File
- Discord cache remover
- Built with 100% batch script


## Config File

To run this script, you will need to add the following variables to txt file  `config.txt` name

`temp1:true/false`

`temp2:true/false`

`discord_cache:true/false`

`logfiles:true/false`

`prefetch:true/false`

`needconfirm:true/false`

`version:string` current `v1.0.0`

`color:string` default `3`


## CONFIG EXPLAIN

#### temp1

`%USERPROFILE%/AppData/Local/Temp`

#### temp2

`%windir%/temp`

#### discord_cache
```
%APPDATA%/Discord/Cache
%APPDATA%/Discord/Code Cache
%APPDATA%/Discord/GPUCache
```

#### logfiles
`main hard drive that windows installed on ex: c:/`

#### prefetch
`%windir%/Prefetch`

#### needconfirm
`confirm before deleting process begin (pause)`

#### version
`script version (no need to edit it :D)`

#### color
`cmd text color`
## Config Example

```javascript
temp1=true
temp2=true
discord_cache=false
logfiles=true
prefetch=false
needconfirm=true
version=v1.0.0
color=1
```

## Cmd Text Color Codes

| Color             | Color Code                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Black | 0  |
| Blue | 1  |
| Green | 2  |
| Aqua | 3  |
| Red | 4  |
| Purple | 5  |
| Yellow | 6  |
| White | 7  |
| Gray | 8  |
| Light Blue | 9  |
| Light Green | A  |
| Light Aqua | B  |
| Light Red | C  |
| Light Purple | D  |
| Light Yellow | E  |
| Bright White | F  |


## Installation

Check Out BatchTempMaster Releases From This [Link](https://github.com/azizmjaber02/batch-temp-master/releases)

NOTE: MAKE SURE TO DOWNLOAD LATEST SCRIPT VERSION AVAILABLE !!

## License

[MIT](https://choosealicense.com/licenses/mit/)

