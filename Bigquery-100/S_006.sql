#S-006: レシート明細テーブル（receipt）から売上日（sales_ymd）、顧客ID（customer_id）、商品コード（product_cd）、売上数量（quantity）、売上金額（amount）の順に列を指定し、以下の条件を満たすデータを抽出せよ。
#顧客ID（customer_id）が"CS018205000001"
#売上金額（amount）が1,000以上または売上数量（quantity）が5以上

SELECT
  sales_ymd,
  customer_id,
  product_cd,
  quantity,
  amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
WHERE  customer_id="CS018205000001" and (amount>=1000 or quantity>=5)