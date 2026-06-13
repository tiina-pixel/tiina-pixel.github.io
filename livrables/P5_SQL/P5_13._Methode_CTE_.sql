with venteT1 as (
select typologie_produit, avg(note) as note1 from produit
join retour_client using (cle_produit)
where date_achat between "2021-01-01" and "2021-03-31" group by typologie_produit),

venteT2 as (
select typologie_produit, avg(note) as note2 from produit
join retour_client using (cle_produit)
where date_achat between "2021-04-01" and "2021-06-30" group by typologie_produit)

select typologie_produit, round(note1,2) as note_T1, round(note2, 2) as note_T2, round(((note2 - note1)/note1)*100,1) as "evolution en %"
from venteT1 join venteT2 using (typologie_produit) where (round(((note2 - note1)/note1)*100,1)) >= 0