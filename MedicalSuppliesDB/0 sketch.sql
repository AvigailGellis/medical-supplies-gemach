/*
MedicalSuppliesDB
GemachCustomer
	GemachId pk
	Name Varchar(50) not null not blank
	PhoneNumber varchar(12) not null not blank
	Item varchar(30) not null not blank
	DateBorrowed date not null before getdate
	ConditionBorrowed varchar(20) not null not blank
	DateReturned date 
	ConditionReturned varchar(20)
	Donation bit default 1
	DateReturned > DateBorrowed
	Either DateReturned and ConditionReturned are null or both not null
*/