# Knox Livy Testing

[![Build Status](https://travis-ci.org/risdenk/knox_livy_testing.svg?branch=master)](https://travis-ci.org/risdenk/knox_livy_testing)

## Getting Started
1. `docker network create example.com`
2. `docker-compose up -d`
3. `./test_knox_livy.sh`
5. `docker-compose down -v --remove-orphans --rmi=all`
6. `docker network rm example.com`

### URLs
* TODO

### Using Livy
TODO

### Development
#### Rebuild Knox image
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`
3. Check the URLs above.

## References
* https://cwiki.apache.org/confluence/display/KNOX/Proxying+a+UI+using+Knox
* https://issues.apache.org/jira/browse/KNOX-842
* https://community.hortonworks.com/articles/70499/adding-livy-server-as-service-to-apache-knox.html

