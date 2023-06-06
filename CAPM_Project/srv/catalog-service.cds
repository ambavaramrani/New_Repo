using {CAPM_Partha.db as db} from '../db/data-model';


//service CatalogService @(requires: 'authenticated-user')
service CatalogService
{
    entity Product as
        projection on db.Product;

    entity customer as  
        projection on db.Customer;


@odata.draft.enabled
    entity sales as
        projection on db.Sales;

@readonly
    entity sales_overview as
        projection on db.sales_overview;

}