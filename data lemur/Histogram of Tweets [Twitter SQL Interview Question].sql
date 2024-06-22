with cte_tweet as (SELECT
                       COUNT(tweet_id) as tweet_count_per_user,
                       user_id
                   FROM tweets
                   where EXTRACT(YEAR FROM tweet_date) = '2022'
                   GROUP BY user_id
)

SELECT
    tweet_count_per_user as tweet_bucket,
    COUNT(user_id) as users_num
from cte_tweet
GROUP BY tweet_bucket;