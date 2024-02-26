use MedicalSuppliesDB
go

delete GemachCustomer
go

insert GemachCustomer(Name, PhoneNumber, Item, DateBorrowed, ConditionBorrowed, DateReturned, ConditionReturned, Donation)
select 'David Cohen', '123-456-7891', 'Crutches', '08-01-2023', 'Good', '10-05-2023', 'Fair', 1
union select 'Malky Klein', '234-567-8911', 'Wheelchair', '06-15-2023', 'Fair', '07-27-2023', 'Poor', 0
union select 'Devorah Adler', '345-678-9123', 'Boot', '09-09-2023', 'Excellent', '11-20-2023', 'Good', 1
union select 'Rivky Goldstein', '456-789-1234', 'Crutches', '11-07-2023', 'Good', '01-02-2024', 'Good', 1
union select 'Moshe Green', '567-891-2345', 'Telescopic Cane', '01-23-2023', 'Fair', '03-04-2023', 'Poor', 1
union select 'Chava Segal', '678-912-3456', 'Boot', '05-06-2023', 'Good', '07-09-2023', 'Fair', 0
union select 'Sarah Reisman' , '789-123-4567', 'Inhaler', '12-12-2023', 'Excellent', null, null, 0
union select 'Esty Shulman', '891-234-5678', 'Walker', '10-04-2023', 'Fair', null, null, 0
