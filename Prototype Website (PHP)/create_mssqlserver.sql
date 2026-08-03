/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          project2.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2024-12-20 11:24                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_location"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_location] (
    [location_id] NVARCHAR(5) NOT NULL,
    [city] NVARCHAR(100),
    [state] NVARCHAR(100),
    [postal_code] NVARCHAR(20),
    CONSTRAINT [PK_tbl_location] PRIMARY KEY ([location_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_segment"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_segment] (
    [segment_id] NVARCHAR(5) NOT NULL,
    [segment_detail] NVARCHAR(100),
    CONSTRAINT [PK_tbl_segment] PRIMARY KEY ([segment_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_category"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_category] (
    [category_id] NVARCHAR(5) NOT NULL,
    [category_derail] NVARCHAR(40),
    CONSTRAINT [PK_tbl_category] PRIMARY KEY ([category_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_ship_mode"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_ship_mode] (
    [ship_mode_id] NVARCHAR(5) NOT NULL,
    [ship_mode_detail] NVARCHAR(100),
    CONSTRAINT [PK_tbl_ship_mode] PRIMARY KEY ([ship_mode_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_customer"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_customer] (
    [customer_id] NVARCHAR(5) NOT NULL,
    [customer_name] NVARCHAR(255) NOT NULL,
    [segment_id] NVARCHAR(5),
    CONSTRAINT [PK_tbl_customer] PRIMARY KEY ([customer_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_sub_category"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_sub_category] (
    [sub_category_id] NVARCHAR(5) NOT NULL,
    [sub_category_detail] NVARCHAR(100),
    [category_id] NVARCHAR(5),
    CONSTRAINT [PK_tbl_sub_category] PRIMARY KEY ([sub_category_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_country"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_country] (
    [country_id] NVARCHAR(5) NOT NULL,
    [city] NVARCHAR(100),
    [state] NVARCHAR(100),
    [postal_code] NVARCHAR(5),
    [customer_id] NVARCHAR(5),
    CONSTRAINT [PK_tbl_country] PRIMARY KEY ([country_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_return"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_return] (
    [retum_id] NVARCHAR(15) NOT NULL,
    [country_id] NVARCHAR(5),
    CONSTRAINT [PK_tbl_return] PRIMARY KEY ([retum_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_employee"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_employee] (
    [employee_id] NVARCHAR(5) NOT NULL,
    [employee_name] NVARCHAR(255),
    [retum_id] NVARCHAR(15),
    CONSTRAINT [PK_tbl_employee] PRIMARY KEY ([employee_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tdl_order"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tdl_order] (
    [order_id] NVARCHAR(15) NOT NULL,
    [order_date] DATETIME,
    [ship_date] DATETIME,
    [employee_id] NVARCHAR(5),
    [customer_id] NVARCHAR(5),
    [ship_mode_id] NVARCHAR(5),
    CONSTRAINT [PK_tdl_order] PRIMARY KEY ([order_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tdl_order_detail"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tdl_order_detail] (
    [order_detail_id] INTEGER NOT NULL,
    [order_id] NVARCHAR(15),
    CONSTRAINT [PK_tdl_order_detail] PRIMARY KEY ([order_detail_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_region"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_region] (
    [region_id] NVARCHAR(5) NOT NULL,
    [region_name] NVARCHAR(100),
    [order_id] NVARCHAR(15),
    CONSTRAINT [PK_tbl_region] PRIMARY KEY ([region_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "tbl_product"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [tbl_product] (
    [product_id] NVARCHAR(15) NOT NULL,
    [product_name] NVARCHAR(255),
    [order_detail_id] INTEGER,
    [category_id] NVARCHAR(5),
    CONSTRAINT [PK_tbl_product] PRIMARY KEY ([product_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [tbl_customer] ADD CONSTRAINT [tbl_segment_tbl_customer] 
    FOREIGN KEY ([segment_id]) REFERENCES [tbl_segment] ([segment_id])
GO


ALTER TABLE [tbl_region] ADD CONSTRAINT [tdl_order_tbl_region] 
    FOREIGN KEY ([order_id]) REFERENCES [tdl_order] ([order_id])
GO


ALTER TABLE [tbl_employee] ADD CONSTRAINT [tbl_return_tbl_employee] 
    FOREIGN KEY ([retum_id]) REFERENCES [tbl_return] ([retum_id])
GO


ALTER TABLE [tbl_product] ADD CONSTRAINT [tdl_order_detail_tbl_product] 
    FOREIGN KEY ([order_detail_id]) REFERENCES [tdl_order_detail] ([order_detail_id])
GO


ALTER TABLE [tbl_product] ADD CONSTRAINT [tbl_category_tbl_product] 
    FOREIGN KEY ([category_id]) REFERENCES [tbl_category] ([category_id])
GO


ALTER TABLE [tbl_sub_category] ADD CONSTRAINT [tbl_category_tbl_sub_category] 
    FOREIGN KEY ([category_id]) REFERENCES [tbl_category] ([category_id])
GO


ALTER TABLE [tbl_return] ADD CONSTRAINT [tbl_country_tbl_return] 
    FOREIGN KEY ([country_id]) REFERENCES [tbl_country] ([country_id])
GO


ALTER TABLE [tdl_order] ADD CONSTRAINT [tbl_employee_tdl_order] 
    FOREIGN KEY ([employee_id]) REFERENCES [tbl_employee] ([employee_id])
GO


ALTER TABLE [tdl_order] ADD CONSTRAINT [tbl_customer_tdl_order] 
    FOREIGN KEY ([customer_id]) REFERENCES [tbl_customer] ([customer_id])
GO


ALTER TABLE [tdl_order] ADD CONSTRAINT [tbl_ship_mode_tdl_order] 
    FOREIGN KEY ([ship_mode_id]) REFERENCES [tbl_ship_mode] ([ship_mode_id])
GO


ALTER TABLE [tdl_order_detail] ADD CONSTRAINT [tdl_order_tdl_order_detail] 
    FOREIGN KEY ([order_id]) REFERENCES [tdl_order] ([order_id])
GO


ALTER TABLE [tbl_country] ADD CONSTRAINT [tbl_customer_tbl_country] 
    FOREIGN KEY ([customer_id]) REFERENCES [tbl_customer] ([customer_id])
GO

