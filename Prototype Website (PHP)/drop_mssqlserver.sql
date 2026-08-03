/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          project2.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2024-12-20 11:24                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [tbl_customer] DROP CONSTRAINT [tbl_segment_tbl_customer]
GO


ALTER TABLE [tbl_region] DROP CONSTRAINT [tdl_order_tbl_region]
GO


ALTER TABLE [tbl_employee] DROP CONSTRAINT [tbl_return_tbl_employee]
GO


ALTER TABLE [tbl_product] DROP CONSTRAINT [tdl_order_detail_tbl_product]
GO


ALTER TABLE [tbl_product] DROP CONSTRAINT [tbl_category_tbl_product]
GO


ALTER TABLE [tbl_sub_category] DROP CONSTRAINT [tbl_category_tbl_sub_category]
GO


ALTER TABLE [tbl_return] DROP CONSTRAINT [tbl_country_tbl_return]
GO


ALTER TABLE [tdl_order] DROP CONSTRAINT [tbl_employee_tdl_order]
GO


ALTER TABLE [tdl_order] DROP CONSTRAINT [tbl_customer_tdl_order]
GO


ALTER TABLE [tdl_order] DROP CONSTRAINT [tbl_ship_mode_tdl_order]
GO


ALTER TABLE [tdl_order_detail] DROP CONSTRAINT [tdl_order_tdl_order_detail]
GO


ALTER TABLE [tbl_country] DROP CONSTRAINT [tbl_customer_tbl_country]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_product"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_product] DROP CONSTRAINT [PK_tbl_product]
GO


DROP TABLE [tbl_product]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_region"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_region] DROP CONSTRAINT [PK_tbl_region]
GO


DROP TABLE [tbl_region]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tdl_order_detail"                                          */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tdl_order_detail] DROP CONSTRAINT [PK_tdl_order_detail]
GO


DROP TABLE [tdl_order_detail]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tdl_order"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tdl_order] DROP CONSTRAINT [PK_tdl_order]
GO


DROP TABLE [tdl_order]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_employee"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_employee] DROP CONSTRAINT [PK_tbl_employee]
GO


DROP TABLE [tbl_employee]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_return"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_return] DROP CONSTRAINT [PK_tbl_return]
GO


DROP TABLE [tbl_return]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_country"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_country] DROP CONSTRAINT [PK_tbl_country]
GO


DROP TABLE [tbl_country]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_sub_category"                                          */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_sub_category] DROP CONSTRAINT [PK_tbl_sub_category]
GO


DROP TABLE [tbl_sub_category]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_customer"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_customer] DROP CONSTRAINT [PK_tbl_customer]
GO


DROP TABLE [tbl_customer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_ship_mode"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_ship_mode] DROP CONSTRAINT [PK_tbl_ship_mode]
GO


DROP TABLE [tbl_ship_mode]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_category"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_category] DROP CONSTRAINT [PK_tbl_category]
GO


DROP TABLE [tbl_category]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_segment"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_segment] DROP CONSTRAINT [PK_tbl_segment]
GO


DROP TABLE [tbl_segment]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "tbl_location"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [tbl_location] DROP CONSTRAINT [PK_tbl_location]
GO


DROP TABLE [tbl_location]
GO

