#S-003: レシート明細のテーブル（receipt）から売上日（sales_ymd）、顧客ID（customer_id）、商品コード（product_cd）、売上金額（amount）の順に列を指定し、10件表示させよ。ただし、sales_ymdはsales_dateに項目名を変更しながら抽出すること。


SELECT
  sales_ymd AS sales_date,
  customer_id,
  product_cd,
  amount
FROM
  `sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt`
LIMIT 10

