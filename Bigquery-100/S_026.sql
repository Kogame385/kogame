#S-026: レシート明細テーブル（receipt）に対し、顧客ID（customer_id）ごとに最も新しい売上日（sales_ymd）と古い売上日を求め、両者が異なるデータを10件表示せよ。

SELECT
  customer_id,
  max(sales_ymd) as max_sales_ymd,
  min(sales_ymd) as min_sales_ymd
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  customer_id
HAVING 
  max(sales_ymd) !=min(sales_ymd)
LIMIT
  10