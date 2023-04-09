## install
1. git clone https://github.com/WebJun/xe-core-docker  
2. cd xe-core-docker  
3. docker-compose up -d --build  
4. docker exec -it xe-core-docker-web-1 chmod 707 /home/xe.test/files  
5. [http://localhost:21080/](http://localhost:21080/) try

### install db info
- db user : root
- db password : docker123
- db name : xe
- host name : db
- port : 3306

## php -v
PHP 5.6.40-65+ubuntu20.04.1+deb.sury.org+1 (cli) 
Copyright (c) 1997-2016 The PHP Group  
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies  
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies  

## nginx -v
nginx version: nginx/1.18.0 (Ubuntu)

## Xpress Engine Version
XE Core ver. 1.11.6  
