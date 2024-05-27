#S-028: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに売上金額（amount）の中央値を計算し、降順でTOP5を表示せよ。

SELECT
  store_cd,
  PERCENTILE_CONT(amount, 0.5) OVER(partition by amount) as median_amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
ORDER BY
  median_amount desc
LIMIT
  5