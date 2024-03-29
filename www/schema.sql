-- schema.sql
	
	drop database if exists awesome;
	
	create database awesome;
	
	use awesome;
	
	drop user 'www'@'localhost' ;
	
	create user 'www'@'localhost' identified by 'wwwwww';
	
	grant select, insert, update, delete on awesome.* to 'www'@'localhost' ;
	
	create table users (
	    `id` varchar(50) not null,
	    `email` varchar(50) not null,
	    `passwd` varchar(50) not null,
	    `admin` bool not null,
	    `name` varchar(50) not null,
	    `image` varchar(500) not null,
	    `created_at` real not null,
	    unique key `idx_email` (`email`),
	    key `idx_created_at` (`created_at`),
	    primary key (`id`)
	) engine=innodb default charset=UTF8MB4;
	
	create table blogs (
	    `id` varchar(50) not null,
	    `user_id` varchar(50) not null,
	    `user_name` varchar(50) not null,
	    `user_image` varchar(500) not null,
	    `name` varchar(50) not null,
	    `summary` varchar(200) not null,
	    `content` mediumtext not null,
	    `created_at` real not null,
	    key `idx_created_at` (`created_at`),
	    primary key (`id`)
	) engine=innodb default charset=UTF8MB4;
	
	create table comments (
	    `id` varchar(50) not null,
	    `blog_id` varchar(50) not null,
	    `user_id` varchar(50) not null,
	    `user_name` varchar(50) not null,
	    `user_image` varchar(500) not null,
	    `content` mediumtext not null,
	    `created_at` real not null,
	    key `idx_created_at` (`created_at`),
	    primary key (`id`)
	) engine=innodb default charset=UTF8MB4;
	