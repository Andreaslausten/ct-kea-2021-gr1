#Statement er forklaret. 
Use quiz;

# Oprettelse af inner join
# <select r.user_id, u.email etc..> betyder at vi ønsker at sammle følgende kolonner.
# Bogstavet U og R, definerer at vi hente fra to forskellige tabeller. Tabel "Users" som er defineret ved u. Og "Results" som er defineret ved r
# <on u.user_id = r.user_id;> betyder at den inner join der oprettes er på præmisserne at primære nøglerne er lig med hinaden
select r.user_id, u.email, u.first_name, u.last_name, r.Development_result, r.Digital_Marketing_result, r.creative_result
From Users u
inner join Results r
on u.user_id = r.user_id;

# Oprettelse af view
# Statement <Create view Creative_result_above_15> vi opretter og gemmer et view som vi kalder for "Creative_result_above_15"
# Statement på linje 19 til og med 22 er forklaret
# <where r.creative_result >= 15;> betyder at det oprettet view, kun skal vi rækkerne som er 15 eller over i kolonne "creative_result"
Create view Creative_result_above_15
as
select r.user_id, u.email, u.first_name, u.last_name, r.creative_result
From Users u
inner join Results r
on u.user_id = r.user_id
where r.creative_result >= 15;

#Samme præmisser som ved førnævnt.
Create view Digital_Marketing_result_above_15
as
select r.user_id, u.email, u.first_name, u.last_name, r.Digital_Marketing_result 
From Users u
inner join Results r
on u.user_id = r.user_id
where r.Digital_Marketing_result >= 15;

#Samme præmisser som ved førnævnt.
Create view Development_result_above_15
as
select r.user_id, u.email, u.first_name, u.last_name, r.Development_result 
From Users u
inner join Results r
on u.user_id = r.user_id
where r.Development_result >= 15;
