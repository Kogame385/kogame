#S-007: レシート明細のテーブル（receipt）から売上日（sales_ymd）、顧客ID（customer_id）、商品コード（customer_id）、売上金額（amount）の順に列を指定し、以下の条件を満たすデータを抽出せよ。
#顧客ID（customer_id）が"CS018205000001"
#売上金額（amount）が1,000以上2,000以下

SELECT
  sales_ymd,
  customer_id,
  customer_id,
  amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
WHERE customer_id="CS018205000001" and amount between 1000 and 2000