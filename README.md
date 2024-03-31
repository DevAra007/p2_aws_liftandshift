# AWS Lift and Shift Project

## Overview

This project involves migrating an existing application infrastructure to Amazon Web Services (AWS) using the Lift and Shift approach. The application consists of various components including Tomcat Server, MySQL, RabbitMQ, and Memcache. The goal is to replicate the existing setup on AWS while utilizing AWS services effectively.

## Components

### EC2 Instances

- **Tomcat Server**: An EC2 instance will be set up to host the Tomcat Server.
- **MySQL**: Another EC2 instance will be provisioned to host the MySQL database.
- **RabbitMQ**: An EC2 instance will be configured to host the RabbitMQ message broker.
- **Memcache**: An EC2 instance will be deployed to host Memcache for caching purposes.

### JDK 11 and Maven Build Server

A separate EC2 instance will be set up to serve as the JDK 11 and Maven Build server. This server will be responsible for building the Java source code into an artifact. The artifact will be stored inside an S3 Bucket for deployment.

### Route53 Private Hosted Zone

A Route53 Private Hosted Zone will be configured to map the IP addresses of the backend servers (MySQL, RabbitMQ, and Memcache) to hostnames accessible from within the Virtual Private Cloud (VPC). This ensures seamless communication between the components within the VPC.

### Public Domain Registration

A public domain will be registered to create a proper hostname for the load balancer endpoint. This hostname will be used to access the application publicly.

## Implementation Steps

1. **EC2 Instance Setup**: Provision EC2 instances for Tomcat Server, MySQL, RabbitMQ, Memcache, and the JDK 11/Maven Build server.
   
2. **Software Installation**: Install the required software components on each EC2 instance. This includes Tomcat Server, MySQL, RabbitMQ, Memcache, JDK 11, and Maven.

3. **Java Source Code Deployment**: Configure the JDK 11/Maven Build server to build the Java source code into an artifact. Store the artifact inside an S3 Bucket.

4. **Route53 Private Hosted Zone**: Set up a Route53 Private Hosted Zone to map the IP addresses of the backend servers to hostnames.

5. **Public Domain Registration**: Register a public domain and configure it to point to the load balancer endpoint.

6. **Security Configuration**: Configure security groups to restrict access to the EC2 instances and other resources as per security requirements.

7. **Testing and Optimization**: Test the application to ensure everything is functioning as expected. Optimize the infrastructure for performance and cost-efficiency if needed.

## Database
Here,we used Mysql DB 
sql dump file:
- /src/main/resources/db_backup.sql
- db_backup.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < db_backup.sql

## Conclusion

By following the above steps, the existing application infrastructure can be successfully migrated to AWS using the Lift and Shift approach. This ensures minimal disruption to the existing setup while taking advantage of the scalability, reliability, and security features offered by AWS.
```