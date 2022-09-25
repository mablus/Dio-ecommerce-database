	create table client (
		idClient int auto_increment primary key,
		Fname varchar(45),
        Minit varchar(45),
        Lname varchar(45),
        CPF char(11) not null,
        Address varchar(30),
        constraint unique_cpf_client unique (CPF)
	 );
     
     create table product (
		idProduct int auto_increment primary key,
		Pname varchar(45),
        classification_kids bool,
        category enum('vestimenta','eletronico','brinquedo','alimento'),
        evaluation  float default 0,
        size varchar(10)
	 );
     
      create table product (
		idProduct int auto_increment primary key,
		Pname varchar(45),
        classification_kids bool,
        category enum('vestimenta','eletronico','brinquedo','alimento'),
        evaluation  float default 0,
        size varchar(10)
        );
        
        create table payment (
			idCLient int,
            id_payment int,
            typeofpayment enum('Dinheiro','Crédito','Débito'),
            limitAvailable float,
            primary key (idClient, id_payment)
        );
	 
      create table Ordem (
		idOrder int auto_increment primary key,
        idOrderClient int auto_increment primary key,
        Orderstatus enum('cancelado','confirmado') default 'em processamento',
		Orderdescription varchar(245),
        sendValue float default 10,
        paymentCash bool default false,
        constraint fk_order_client foreign key (idOrderClient) references CLient(idClient)
        
        
	 );
     create table productStorage (
		idproductStorage int auto_increment primary key,
        locationStorage varchar(45),
		Quantity int default 0                
	 );
     
     create table supplier(
		idsupplier int auto_increment primary key,
        SocialName varchar(45) not null,
        CNPJ varchar(15),
		Contact varchar(10)  not null,
        constraint unique_supplier unique (CNPJ)        
	 );
     
      create table seller(
		idseller int auto_increment primary key,
        SocialName varchar(45) not null,
        AbstName varchar(45),
        location varchar(45),
        CNPJ varchar(15),
        CPF char(11),
		Contact varchar(10)  not null,
        constraint unique_seller unique (CNPJ),   
		constraint unique_CNPJ_seller unique (CNPJ),   
		constraint unique_CPF_seller unique (CNF)    
	 );
     
     create table productSeller(
		idPseller int,
        idProduct int,
        prodQuantity int default 1,
		primary key(idPseller, idProduct),
        constraint fk_product_seller foreign key(idPseller) references seller(idPseller),
	    constraint fk_product_product foreign key(idProduct) references product(idProduct)
     
      );
      create table productSupplier(
		idpsSupplier int,
        idpsProduct int,
        Quantity int not null,
		primary key(idpsSuplier, idpsProduct),
        constraint fk_supplier_supplier foreign key(idPsSuplier) references supplier(idPsSupplier),
	    constraint fk_supplier_product foreign key(idPsProduct) references product(idProduct)
     
      );
     desc productSupplier;
     
     show tables;
     
     show databases;
     use information_schema;
     
     show tables;
     desc table_constraints;
     
     select * from referemtial_constraints where constraint_schema = 'ecommerce';