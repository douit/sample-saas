-- begin SAAS_PAYMENT_METHOD
create table SAAS_PAYMENT_METHOD (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    DESCRIPTION varchar(255),
    --
    primary key (ID)
)^
-- end SAAS_PAYMENT_METHOD
-- begin SAAS_CUSTOMER
create table SAAS_CUSTOMER (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    CLIENT integer not null,
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end SAAS_CUSTOMER
-- begin SAAS_ORDER
create table SAAS_ORDER (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    CLIENT integer not null,
    --
    NUM varchar(255) not null,
    DATE_ date,
    CUSTOMER_ID varchar(36),
    PAYMENT_METHOD_ID varchar(36),
    --
    primary key (ID)
)^
-- end SAAS_ORDER
