#!/bin/sh
cat << EOF | mysql cinder
CREATE TABLE attribute (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL, project_id VARCHAR(30) NOT NULL, created_at DATETIME, deleted_at DATETIME, updated_at DATETIME, deleted VARCHAR(30));
CREATE TABLE scope (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,name VARCHAR(30) NOT NULL,project_id VARCHAR(30) NOT NULL,created_at DATETIME,deleted_at DATETIME,updated_at DATETIME,deleted VARCHAR(30),value VARCHAR(30));
EOF
