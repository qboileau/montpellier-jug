# JUG

# Installation

Depends on [OAuth2 Authenticator](https://github.com/cheleb/wisdom-oauth2-authenticator)  
The library should be available on the jug-montpellier nexus. Please contact jug-leaders-montpellier@googlegroups.com if there is problem with this library.

## Configuration

### Default
The application will be build using environments variables.  
Please refer to [the parent pom](pom.xml#L37) to see the list of available configurations.  


### Maven profile dev
A posgresql local database named "jug" must be accessible for user jug / jug  
The database will be build by project montpellier-jug-database and will generate the structure of the tables.  

## Mvn installation

**You need to run this app with java 8!**

Build and run the application :
```bash
> mvn install
> cd montpellier-jug-wisdom
> mvn wisdom:run
```
Then open [http://localhost:9000/](http://localhost:9000/)

Database is migrated on each build  
To clean the database use the profile cleandb. 
```bash
> mvn clean install -Pcleandb
```
:warning: Warning : Be sure to target a development database before cleaning it :warning:
