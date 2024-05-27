#S-031: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに売上金額（amount）の標本標準偏差を計算し、降順でTOP5を表示せよ。

SELECT
  store_cd,
  stddev_samp(amount) as std_amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  store_cd 
ORDER BY
  std_amount desc
LIMIT
  5