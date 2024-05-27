#S-034: レシート明細テーブル（receipt）に対し、顧客ID（customer_id）ごとに売上金額（amount）を合計して全顧客の平均を求めよ。
#ただし、顧客IDが"Z"から始まるのものは非会員を表すため、除外して計算すること。

WITH 
  customer_amount as 
    (SELECT
      customer_id,
      sum(amount) as sum_amount
    FROM
      sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
    WHERE
      customer_id not like "Z%"
    GROUP BY
      customer_id
    )
SELECT
  avg(sum_amount) as avg_
FROM
  customer_amount
