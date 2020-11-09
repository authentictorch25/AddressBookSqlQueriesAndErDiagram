--UC 6 working
--persons in aparticular city
select c.*,ca.city,ca.state,ca.zip
from ContactDetails c,AddressDetails ca
where c.first_name=ca.first_name and c.last_Name=ca.last_Name and ca.city='Waidhan';
--persons in a particular state
select c.*,ca.city,ca.State,ca.zip
from ContactDetails c,AddressDetails ca
where c.first_name=ca.first_name and c.last_Name=ca.last_Name and ca.State='UttarPradesh';

--UC 7 working
select city,count(City) as PeopleInCity from AddressDetails group by city;
select State,count(State) as PeopleInState from AddressDetails group by State;

--UC 8 working
select c.*,ca.city,ca.state,ca.zip
from ContactDetails c,AddressDetails ca
where c.first_name=ca.first_name and c.last_Name=ca.last_Name and ca.City='Vindhyanagar' 
order by ca.first_name,ca.last_name;

--UC 10 working
select t.ContactType,count(ct.Id) as NumberOfContacts
from ContactType ct,type t
where t.Id=ct.Id
group by t.ContactType;