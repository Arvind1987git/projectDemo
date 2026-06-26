
using { sap.cap.productshop as my } from '../db/schema';



//@protocol: 'rest'


service productshop
{


entity product as projection on my.product actions {
    action orderProduct (stock: Integer);
    action fingerprint (username: String );
    action createOne (name: String );
};
entity suplayer as projection on my.suplayer;
function  myfunction (name: String ) returns String;
action  myAction (name: String ) returns String;

}
//annotate productshop  with @(requires: 'productmanager');
   
