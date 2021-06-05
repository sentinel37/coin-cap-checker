#!/bin/bash

: '
Aurthor: Sean Isaac-Elder
'

############ Color Code #############
: '
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37

https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
'
RED='\033[0;31m'

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
############ Color Code End #########

############## API Pages ############## 
: '
epic Crypto Script
https://github.com/8go/coinbash

Coinbase API Page
https://developers.coinbase.com/api/v2#introduction

CoinMarketCap API Page
https://coinmarketcap.com/api/documentation/v1/#
'
# Coindesk API (only available for BTC)
# btc=$(curl -s http://api.coindesk.com/v1/bpi/currentprice.json  | jq '.bpi.USD.rate' | tr -d '"')


############## API Pages End ########## 

############## Variables ############## 
btcp=$(curl -s https://api.coinbase.com/v2/prices/BTC-USD/buy | cut -d\: -f5 | cut -d\" -f2)
btcn=$(curl -s https://api.coinbase.com/v2/prices/BTC-USD/buy | cut -d\: -f3| cut -d\" -f2)
ethp=$(curl -s https://api.coinbase.com/v2/prices/ETH-USD/buy | cut -d\: -f5 | cut -d\" -f2)
ethn=$(curl -s https://api.coinbase.com/v2/prices/ETH-USD/buy | cut -d\: -f3| cut -d\" -f2)
adap=$(curl -s https://api.coinbase.com/v2/prices/ADA-USD/buy | cut -d\: -f5 | cut -d\" -f2)
adan=$(curl -s https://api.coinbase.com/v2/prices/ADA-USD/buy | cut -d\: -f3| cut -d\" -f2)



: '

curl -H "X-CMC_PRO_API_KEY: 5bd282db-ca94-4660-a425-cb15e3675189" -H "Accept: application/json" -d "start=1&limit=1&convert=USD" -G https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest

Market Cap
Volume
Popularity on Coinbase

'

############## Variables End ########## 


# https://api.coinmarketcap.com/v1/ticker/bitcoin/

############## ------------------------------- Output ------------------------------- ############## 

# printf """
# -----------------------------------------------------------------------------
# """
# printf "|  ${red}Rank${end}  |  Symbol  |     Name    |    ${grn}USD${end}     |  1H  |  7d-Change${end}  |"
# printf """      
# -----------------------------------------------------------------------------
#          |    $btcn   |  Bitcoin    |  \$$btcp |
#          |    $ethn   |  Ethereum   |  \$$ethp  |
#          |    $adan   |  Cardano    |  \$$adap     |
# -----------------------------------------------------------------------------         
# """

printf """
---------------------------------------------------------------------
"""
printf "|  ${red}Rank${end}  |  Symbol  |     Name    |    ${grn}USD${end}     |  1H  |  7d-Change${end}  |"
printf """      
---------------------------------------------------------------------
|        |    $btcn   |  Bitcoin    |  \$$btcp |                    |
---------------------------------------------------------------------     
"""
############## ------------------------------- Output End ------------------------------- ########## 

############## RoadMap ############## 
: '
1. Chart Cryptocurrent price
2. Get 1H/1D/1W/1M/1Y/ALL change
3. Check account balance
4. Logic:
    If crypto hits x% greater than all time high, then sell
    if crypto falls X% greater than all time high, then buy
'
############## RoadMap End ########## 


