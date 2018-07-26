use lead_gen_business;

/*
SELECT *, clients.first_name
FROM sites
RIGHT JOIN clients ON clients.id = sites.clients_id
WHERE sites.id=(
    SELECT max(id) FROM sites
    );

SELECT * FROM clients;

SELECT clients.first_name, clients.last_name, billing.amount , billing.charged_datetime
FROM clients
JOIN billing ON clients.id = billing.clients_id;

-- Other Math functions can work, not only SUM()
SELECT clients.first_name, clients.last_name, SUM(billing.amount)
FROM clients
JOIN billing ON clients.id = billing.clients_id
group by clients_id;

SELECT sites.domain_name, leads.first_name, leads.last_name
FROM sites
JOIN leads ON sites.id = leads.sites_id;

SELECT clients.first_name AS clients_first, clients.last_name, sites.domain_name, leads.first_name AS lead_first, leads.last_name
FROM clients
JOIN sites on clients.id = sites.clients_id
JOIN leads on sites.id = leads.sites_id;

*/
SELECT clients.first_name AS clients_first, clients.last_name, sites.domain_name, count(leads.id)
FROM clients
LEFT JOIN sites 
ON clients.id = sites.clients_id
JOIN leads 
ON sites.id = leads.sites_id
group by sites.id;
 /*
SELECT clients.first_name, clients.last_name, sites.domain_name
FROM clients
LEFT JOIN sites ON clients.id = sites.clients_id;

SELECT clients.first_name, clients.last_name, GROUP_CONCAT(' ',sites.domain_name) AS domains
FROM clients
JOIN sites ON clients.id = sites.clients_id
GROUP BY clients.id;

SELECT COUNT(leads.id), sites.domain_name
FROM sites
JOIN leads ON sites.id = leads.sites_id
GROUP BY sites.id;

SELECT sites.domain_name, leads.first_name, leads.last_name
FROM leads
RIGHT JOIN sites ON sites.id = leads.sites_id;
*/
