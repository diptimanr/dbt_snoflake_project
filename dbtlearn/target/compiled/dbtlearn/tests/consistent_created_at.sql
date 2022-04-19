SELECT 
  * 
FROM airbnb.dev.dim_listings_cleansed listings
INNER JOIN airbnb.dev.fct_reviews reviews
USING (listing_id)
WHERE listings.created_at >= reviews.review_date