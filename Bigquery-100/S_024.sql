#S-024: レシート明細テーブル（receipt）に対し、顧客ID（customer_id）ごとに最も新しい売上日（sales_ymd）を求め、10件表示せよ。

SELECT
  customer_id,
  max(sales_ymd) as max_sales_ymd
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  customer_id
LIMIT
  10