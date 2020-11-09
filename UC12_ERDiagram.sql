--UC 6 working
--persons in aparticular city
select c.*,ca.city,ca.state,ca.zip
from ContactDetails c,AddressDetails ca
where c.first_name=ca.first_name and c.LastName=ca.lastName and ca.city='Kurukshetra';
--persons in a particular state
select c.*,ca.city,ca.state,ca.zip
from contact c,AddressDetails ca
where c.first_name=ca.first_name and c.LastName=ca.lastName and ca.state='Haryana';

--UC 7 working
select city,count(City) as PeopleInCity from AddressDetails group by city;
select tate,count(State) as PeopleInState from AddressDetails group by state;

--UC 8 working
select c.*,ca.city,ca.state,ca.zip
from contact c,contact_address ca
where c.first_name=ca.first_name and c.first_name=ca.first_name and ca.City='Kurukshetra' 
order by ca.first_name,ca.first_name;

--UC 10 working
select t.ContactType,count(ct.TypeCode) as NumberOfContacts
from contact_type ct,type t
where t.TypeCode=ct.TypeCode
group by t.ContactType;