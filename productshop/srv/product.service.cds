using { sap.cap.productshop as my} from '../db/schema';



service productshop{
entity product as projection on my.product;
entity suplayer as projection on my.suplayer;


}