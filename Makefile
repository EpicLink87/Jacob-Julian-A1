OBJ = main.o InvControl.o Store.o Product.o UI.o ProdArray.o CustArray.o Customer.o Purchase.o PurchaseArray.o ProdList.o

cushop:	$(OBJ)
	g++ -o cushop $(OBJ)

main.o:	main.cc 
	g++ -c main.cc

InvControl.o:	InvControl.cc InvControl.h Store.h UI.h
	g++ -c InvControl.cc

UI.o:	UI.cc UI.h
	g++ -c UI.cc

Store.o:	Store.cc Store.h
	g++ -c Store.cc

Product.o:	Product.cc Product.h
	g++ -c Product.cc

ProdArray.o:	ProdArray.cc ProdArray.h Product.h defs.h
	g++ -c ProdArray.cc
	
ProdList.o:	ProdList.cc ProdList.h Product.h defs.h
	g++ -c ProdList.cc

CustArray.o:	CustArray.cc CustArray.h Customer.h defs.h
	g++ -c CustArray.cc

Customer.o:	Customer.cc Customer.h 
	g++ -c Customer.cc

Purchase.o:	Purchase.cc Purchase.h 
	g++ -c Purchase.cc
	
PurchaseArray.o:	PurchaseArray.cc PurchaseArray.h 
	g++ -c PurchaseArray.cc

clean:
	rm -f $(OBJ) cushop
