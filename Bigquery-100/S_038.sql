#S-038: 顧客テーブル（customer）とレシート明細テーブル（receipt）から、各顧客ごとの売上金額合計を求めよ。
#ただし、売上実績がない顧客については売上金額を0として表示させること。
#また、顧客は性別コード（gender_cd）が女性（1）であるものを対象とし、非会員（顧客IDが"Z"から始まるもの）は除外すること。
#なお、結果は10件だけ表示させれば良い。

with 
  customer_amount as 
  (
  SELECT
    customer_id,
    sum(amount) as sum_amount
  FROM
    sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
  GROUP BY
    customer_id,
  )
SELECT
  cu.customer_id,
  coalesce(csa.sum_amount, 0) as customer_sum_amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.customer as cu
LEFT JOIN
  customer_amount as csa
ON
  cu.customer_id=csa.customer_id
WHERE
cu.customer_id not like 'Z%' and cu.gender_cd = '1'
LIMIT
  10