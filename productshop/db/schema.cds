namespace sap.cap.productshop;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

aspect carbanmission
{
    emision : Integer;
    rating : Integer;
}

type pricecast
{
    stock : Integer;
    price : Integer;
}

entity product : cuid, managed, carbanmission
{
    name : String;
    category : Integer;
    stock : Integer;
    price : Integer;
    emisions:Integer;
    suplayer : Association to one suplayer;
    conversestion: Composition of many{

        key ID : UUID;
        timestemp : String;
        prosesser : String;
        massege : String;
    }
}

entity suplayer
{
    key ID : Integer;
    name : String;
    phone : String;
    city : String;
    product : Association to many product
                 on product.suplayer = $self;
}
