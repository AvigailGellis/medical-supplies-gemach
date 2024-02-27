--How many times each item was borrowed, ordered by most often to least often.
select TotalBorrowed = count(*), g.Item
from GemachCustomer g 
group by g.Item
order by TotalBorrowed desc
--A list of all items sorted by the condition they're currently in.
--AS This wasn't so clear, is this what you wanted?
select g.Item, g.ConditionReturned
from GemachCustomer g 
order by g.Item, g.DateReturned desc
--I want to know the average amount of days items have been borrowed for. 
select AvgDaysBorrowed = avg(datediff(day, g.DateBorrowed, g.DateReturned))
from GemachCustomer g
--I also want to know the longest and shortest amount of time an item has been borrowed for.
select MaxAmountBorrowed = max(datediff(day, g.DateBorrowed, g.DateReturned)), MinAmountBorrowed = min(datediff(day, g.DateBorrowed, g.DateReturned))
from GemachCustomer g 
--For items that haven't been returned yet, how long has it been since they were borrowed?
select g.Item, DaysSinceBorrowed = datediff(day, g.DateBorrowed, getdate())
from GemachCustomer g 
where g.DateReturned is null
--I want to know how many people gave donations and how many declined.
select NoDonation = count(*)
from GemachCustomer g 
where g.Donation = 0 and g.DateReturned is not null

select DonationMade = count(*)
from GemachCustomer g 
where g.Donation = 1