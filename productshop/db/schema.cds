namespace sap.cap.productshop;

aspect carbanmission {
    emision : Integer;
    rating  : String;

}

type pricecast  {
    stock : Integer;
    price : Integer;
}

entity product: carbanmission {
    key id       : Integer;
        name     : String;
        category : Integer;
        cost     : pricecast;


}

entity suplayer {
    key ID          : Integer;
        name        : String;
        branch_name : String;
        city        : String;
}
