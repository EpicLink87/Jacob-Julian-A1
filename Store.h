/* * * * * * * * * * * * * * * * * * * * * * * * * */
/*                                                 */
/*  Program:  Simple Inventory System              */
/*  Author:   Christine Laurendeau                 */
/*  Date:     28-JUN-2016                          */
/*                                                 */
/*  (c) 2016 Christine Laurendeau                  */
/*  All rights reserved.  Distribution and         */
/*  reposting, in part or in whole, without the    */
/*  written consent of the author, is illegal.     */
/*                                                 */
/* * * * * * * * * * * * * * * * * * * * * * * * * */

#ifndef STORE_H
#define STORE_H

#include "ProdArray.h"
#include "ProdList.h"
#include "Product.h"
#include "CustArray.h"
#include "Customer.h"
#include "OrderServer.h"
#include "OrderArray.h"
#include "Order.h"

class Store
{
  public:
    Store();
    ~Store();
    void       addProd(Product*);
    void       addCust(Customer*);
    ProdList* getStock();
    CustArray* getCustomers();
    OrderServer* getOrderServer();
  private:
    ProdList*  stock;
    CustArray*  customers;
    OrderServer* orderServer;
};

#endif
