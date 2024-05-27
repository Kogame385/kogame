#S-002: レシート明細のテーブル（receipt）から売上日（sales_ymd）、顧客ID（customer_id）、商品コード（product_cd）、売上金額（amount）の順に列を指定し、10件表示させよ。

SELECT
  sales_ymd,
  customer_id,
  product_cd,
  amount
FROM
  `sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt`
LIMIT 10