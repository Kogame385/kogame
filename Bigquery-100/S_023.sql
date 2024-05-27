#S-023: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに売上金額（amount）と売上数量（quantity）を合計せよ。

SELECT
  store_cd,
  sum(amount)as amount,
  sum(quantity)as quantity
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY 
  store_cd