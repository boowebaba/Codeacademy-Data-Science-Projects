 select * from transaction_data;

--Start by getting a feel for the transaction_data table:

 select * from transaction_data limit 10;

 --2.The finance department noted that some of the fraudulent transactions were recorded as coming from Smokey Bear’s zip code (20252).You agree this is suspicious, it’s unlikely that the fire prevention mascot is using Reputable Company’s services.Find the full_names and emails of the transactions listing 20252 as the zip code.

select full_name , email from transaction_data
where zip =20252;


--3. Finance has also noticed a number of pseudonyms associated with fraudulent transactions.The fraudsters thought it would be funny to use ‘Art Vandelay’ for their full name or add a ‘der’ for their middle name.Use a query to find the names and emails associated with these transactions.

select full_name, email from transaction_data
where full_name like "%Art Vandelay" or full_name like
"%der%";

--4. There are some irregularities in the IP addresses where transactions are originating from.For example, any IP address beginning with ‘10.’ is reserved for internal use.We shouldn’t see IP addresses like this accessing Reputable Company’s service.Find the ip_addresses and emails listed with these transactions.

select ip_address, email from transaction_data
where ip_address like "10%";

--5. Users are making fraudulent transactions using a temporary email address service. These services provide a short-lived email that can be verified and then self-destructs.Find the emails in transaction_data with ‘temp_email.com’ as a domain.

select email from transaction_data
where email like '%temp_email.com';

--6. The finance department is looking for a specific transaction. They know that the transaction occurred from an ip address starting with ‘120.’ and their full name starts with ‘John’.Can you find the transaction?

select full_name,ip_address,email From transaction_data
where ip_address like "120%" and full_name like "John%";
