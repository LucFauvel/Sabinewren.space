CREATE TABLE Countries(
	Name VARCHAR(30) CLUSTERED PRIMARY KEY
);

CREATE TABLE Persons(
	Name VARCHAR(30) CLUSTERED PRIMARY KEY,
	Country VARCHAR(30),
	FOREIGN KEY Country REFERENCES(Countries)
);

CREATE TABLE Organizations(
	SID VARCHAR(10) CLUSTERED PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	Icon VARCHAR(100),/* can be saved locally or as URL to RSI */
);

CREATE TABLE OrgsInCog(
	SID VARCHAR(10) CLUSTERED NOT NULL,
	Representative VARCHAR(30) NOT NULL,
	FOREIGN KEY SID REFERENCES(Organizations),
	FOREIGN KEY Representative REFERENCES(Persons)
);