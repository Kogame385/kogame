#S-029: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに商品コード（product_cd）の最頻値を求めよ。

SELECT
  store_cd,
  approx_top_count(product_cd,1) as mode
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  store_cd