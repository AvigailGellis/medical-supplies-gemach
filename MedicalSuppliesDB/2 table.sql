use MedicalSuppliesDB
go

drop table if exists GemachCustomer 
go 

create table dbo.GemachCustomer(
    GemachCustomerId int not null identity primary key,
    Name varchar(50) not null constraint ck_GemachCustomer_Name_cannot_be_blank check(Name <> ''),
    PhoneNumber varchar(12) not null constraint ck_GemachCustomer_PhoneNumber_cannot_be_blank check(PhoneNumber <> ''),
    Item varchar(30) not null constraint ck_GemachCustomer_Item_cannot_be_blank check(Item <> ''),
    DateBorrowed date not null constraint ck_GemachCustomer_DateBorrowed_must_be_before_the_current_date check(DateBorrowed <= getdate()),
    ConditionBorrowed varchar(20) not null constraint ck_GemachCustomer_ConditionBorrowed_cannot_be_blank check(ConditionBorrowed <> ''),
    DateReturned date,
    ConditionReturned varchar(20),
    Donation bit not null default 1,
    constraint ck_GemachCustomer_DateReturned_must_be_after_DateBorrowed check(DateBorrowed <= DateReturned),
    constraint ck_GemachCustomer_either_ConditionReturned_and_DateReturned_are_both_null_or_both_not_null check((DateReturned is null and ConditionReturned is null) or (DateReturned is not null and ConditionReturned is not null))
)
go