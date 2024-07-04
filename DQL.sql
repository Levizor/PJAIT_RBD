select p.PERSON_ID, FIRST_NAME, LAST_NAME, l.LANGUAGE
from PERSON p
join LANGUAGE_PERSON lp on p.PERSON_ID = lp.PERSON_ID
join LANGUAGE l on lp.LANGUAGE = l.LANGUAGE_ID
where l.LANGUAGE='English'

select FIRST_NAME, LAST_NAME, POSITION
from PERSON p
join EMPLOYEE e on p.PERSON_ID=e.PERSON_ID
join EMPLOYEEPOSITION ep on e.PERSON_ID = ep.EMPLOYEE_ID
join POSITION pos on ep.POSITION_ID = pos.POSITION_ID
where POSITION='Manager'

select rs.RS_ID, ADDRESS, RENT_PRICE
from REALESTATE rs
join RS_STATUS_HISTORY sh on rs.RS_ID=sh.RS_ID
join STATUS s on s.ID=sh.STATUS_ID
where s.STATUS = 'Renovation'