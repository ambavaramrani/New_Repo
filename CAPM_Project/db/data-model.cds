namespace CAPM_Project.db;

entity Product
{
    key productId : Integer;
    productName : String;
    price : Integer;
}

entity Customer
{
    key custId : Integer;
    custName : String;
    custAddress : String;
    custMail : String;
}

entity Sales
{
    key salesId : Integer;
    custId : Integer;
    productId : Integer;
    date : Date default date'2023-04-12';
}

entity sales_overview as
    select key sal.salesId as salesID,
    sal.custId as customerID,
    cust.custName as customerName,
    cust.custAddress as customerAddress,
    com.productId as productID,
    com.productName as productName,
    com.price as salesAmount
    from Sales as sal
    left join Customer as cust
        on sal.custId = cust.custId
    left join Product as com
        on sal.productId = com.productId;
