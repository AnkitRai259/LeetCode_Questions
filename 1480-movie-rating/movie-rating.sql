# Write your MySQL query statement below
(Select u.name as results
from MovieRating m  join Users u on u.user_id = m.user_id join Movies r on m.movie_id = r.movie_id
group by u.name
order by count(m.movie_id) desc, u.name asc
limit 1)
Union all
(Select title
from ( select title, avg(rating) as avg_rating
       from MovieRating m join Movies r on m.movie_id = r.movie_id 
       where created_at like '2020-02%' 
       group by title) as avg_table
order by avg_rating desc, title ASC
limit 1);

