namespace sap.cap.productshop;


entity product
{
    key id : Integer;
    name : String;
    stock : Integer;
    price : Integer;
    category : Integer;
}

entity suplayer
{
    key ID : Integer;
    name : String;
    branch_name : String;
    city : String;
}
