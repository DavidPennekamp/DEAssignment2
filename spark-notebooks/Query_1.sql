-- write a query that order owners based on the average rating of their listings
-- the query should return the owner id, the average rating, and the number of listings
-- the query should be ordered by the average rating in descending order
-- the query should only return owners with more than 2 listings
Select
    owner_id,
    avg(rating) as avg_rating,
    count(*) as num_listings
From
    df_listings, df_owner, df_owner_listings
Where
    df_listings.id = df_owner_listings.listing_id
    and df_owner.id = df_owner_listings.owner_id
Group by
    owner_id
Having
    count(*) > 2
Order by
    avg_rating desc
