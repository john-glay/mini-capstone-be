DROP SCHEMA IF EXISTS jeff cascade;
CREATE SCHEMA jeff;

CREATE TABLE jeff.USERS (
                                user_id uuid,
                                password varchar(150),
                                email varchar(150),
                                total_orders int,
                                success_orders int,
                                created_date TIMESTAMP WITH TIME ZONE,
                                modified_date TIMESTAMP WITH TIME ZONE,
                                PRIMARY KEY (user_id)
);

CREATE TABLE jeff.PRODUCTS (
                                   product_id uuid,
                                   product_name varchar(150),
                                   image_link varchar(150),
                                   price float,
                                   ratings float,
                                   type varchar(150),
                                   filter varchar(150),
                                   description varchar,
                                   created_date TIMESTAMP WITH TIME ZONE,
                                   modified_date TIMESTAMP WITH TIME ZONE,
                                   PRIMARY KEY (product_id)
);

CREATE TABLE jeff.POPULAR (
                                  product_id uuid,
                                  product_name varchar(150),
                                  image_link varchar(150),
                                  price float,
                                  type varchar(150),
                                  created_date TIMESTAMP WITH TIME ZONE,
                                  modified_date TIMESTAMP WITH TIME ZONE,
                                  PRIMARY KEY (product_id)
);

CREATE TABLE jeff.BLOGS (
                                blog_id uuid,
                                blog_name varchar(150),
                                blog_author varchar(150),
                                image_link varchar(150),
                                description varchar,
                                created_date TIMESTAMP WITH TIME ZONE,
                                modified_date TIMESTAMP WITH TIME ZONE,
                                PRIMARY KEY (blog_id)
);


CREATE TABLE jeff.CART (
                               product_id uuid references jeff.PRODUCTS (product_id),
                               user_id uuid references jeff.USERS (user_id),
                               PRIMARY KEY (user_id, product_id)
);
