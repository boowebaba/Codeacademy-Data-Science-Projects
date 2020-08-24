 -- 1.Start by getting a feel for the users table:
 
 select * from users limit 20;


 --2.The marketing department wants to send a Born in the ‘80s email to the appropriate users.Find the email addresses and birthdays of users whose birthday is between 1980-01-01 and 1989-12-31.


select email, birthday from users 
where birthday Between '1980-01-01' and '1989-12-31';

--3.We are interested in the cohort of users that signed up prior to May 2017.Find the emails and creation date of users whose created_at date matches this condition.

SELECT created_at,email
FROM users
WHERE created_at < '2017-05-01'
ORDER BY created_at ASC;

--4.There was an A/B test performed on users that used cute animal clipart to encourage users to sign up. We’d like to see how the group that was shown ‘bears’ is performing.Find the emails of the users who received the ‘bears’ test.

select email, test from users
where test = 'bears';


--5. A total of 4 advertising campaigns were run over this period.There were two sets of ad copy (set 1 and set 2) and both were run on two search engine sites (AAA and BBB).

-- The resulting campaign values are: AAA-1,AAA-2,BBB-1,BBB-2

--Find all the emails of all users who received a campaign on website BBB.

select email,campaign from users
where campaign like "%BBB%";


--6. Find all the emails of all users who received ad copy 2 in their campaign.

select email, campaign from users
where campaign like '%AAA-2%';

--7.  Find the emails for all users who received both a campaign and a test.These users will have non-empty entries in the campaign and test columns.

SELECT email,campaign,test
from users
where campaign IS NOT NULL 
AND
test IS NOT NULL;
