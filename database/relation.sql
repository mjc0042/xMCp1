CREATE TABLE Member 
( 
  memberid INTEGER NOT NULL AUTO_INCREMENT,
  phone CHAR(10),
  PRIMARY KEY(memberid)
);

CREATE TABLE Address
(
  memberid INTEGER,
  street CHAR(50),
  city CHAR(20),
  state CHAR(2),
  zip CHAR(5),
  PRIMARY KEY(memberid,street,zip),
  FOREIGN KEY(memberid) REFERENCES Member(memberid) ON DELETE CASCADE
);
          
CREATE TABLE Registereduser
(
  memberid INTEGER,
  username CHAR(20) NOT NULL,
  name CHAR(50),
  password CHAR(16),
  email CHAR(50),
  age INTEGER,
  gender CHAR(6),
  income REAL,
  PRIMARY KEY(username),
  FOREIGN KEY(memberid) REFERENCES Member(memberid) ON DELETE CASCADE
);

CREATE TABLE Creditcard
(
  username CHAR(20),
  type CHAR(10),
  name CHAR(20),
  number CHAR(16) NOT NULL,
  expiration CHAR(5),
  PRIMARY KEY(username,number),
  FOREIGN KEY(username) REFERENCES Registereduser(username) ON DELETE CASCADE
);

CREATE TABLE Supplier
(
  memberid INTEGER,
  pointofcontact CHAR(50),
  company CHAR(50),
  category CHAR(50),
  revenue REAL,
  FOREIGN KEY(memberid) REFERENCES Member(memberid) ON DELETE CASCADE
);

CREATE TABLE Rating
(
  rateid INTEGER,
  raterid INTEGER,
  rateeid INTEGER,
  ratingnumber INTEGER,
  PRIMARY KEY(rateid),
  FOREIGN KEY(raterid) REFERENCES Member(memberid) ON DELETE CASCADE,
  FOREIGN KEY(rateeid) REFERENCES Member(memberid) ON DELETE CASCADE
);

CREATE TABLE Item
(
  itemid INTEGER NOT NULL,
  memberid INTEGER,
  descr TEXT(500),
  postdate CHAR(10),
  availabilityflag INTEGER,
  location CHAR(2),
  url CHAR(250),
  quantity INTEGER,
  PRIMARY KEY(itemid),
  FOREIGN KEY(memberid) REFERENCES Member(memberid) ON DELETE CASCADE
);

CREATE TABLE Category
(
  categoryname CHAR(50),
  parentcategory CHAR(50),
  itemid INTEGER,
  PRIMARY KEY(categoryname, parentcategory,itemid),
  FOREIGN KEY(itemid) REFERENCES Item(itemid) ON DELETE CASCADE
);

CREATE TABLE Sale
(
  itemid INTEGER,
  listedprice REAL,
  PRIMARY KEY(itemid),
  FOREIGN KEY(itemid) REFERENCES Item(itemid) ON DELETE CASCADE
);

CREATE TABLE Auction
(
  itemid INTEGER,
  reservedprice REAL,
  username CHAR(20),
  PRIMARY KEY(itemid),
  FOREIGN KEY(itemid) REFERENCES Item(itemid) ON DELETE CASCADE
);

CREATE TABLE Bid
(
  price REAL,
  username CHAR(20),
  itemid INTEGER,
  PRIMARY KEY(username, itemid, price),
  FOREIGN KEY(username) REFERENCES Registereduser(username) ON DELETE CASCADE,
  FOREIGN KEY(itemid) REFERENCES Item(itemid) ON DELETE CASCADE
);

CREATE TABLE Orders
(
  username CHAR(20),
  orderid INTEGER NOT NULL,
  itemid INTEGER,
  orderdate CHAR(10),
  quantity INTEGER,
  shipdate CHAR(10),
  cardnumber CHAR(16),
  PRIMARY KEY(orderid,itemid),
  FOREIGN KEY(itemid) REFERENCES Item(itemid) ON DELETE CASCADE,
  FOREIGN KEY(username) REFERENCES Registereduser(username) ON DELETE CASCADE
);

CREATE TABLE Comments
(
  commentid INTEGER NOT NULL,
  memberid INTEGER,
  username CHAR(20),
  descr TEXT(500),
  PRIMARY KEY(commentid),
  FOREIGN KEY(memberid) REFERENCES Member(memberid) ON DELETE CASCADE,
  FOREIGN KEY(username) REFERENCES Registereduser(username) ON DELETE CASCADE
);

CREATE TABLE Rating
(
  username char(20) NOT NULL,
  rate INTEGER,
  FOREIGN KEY(username) REFERENCES Registereduser(username) ON DELETE CASCADE
)
