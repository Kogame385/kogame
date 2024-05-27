#S-030: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに売上金額（amount）の標本分散を計算し、降順でTOP5を表示せよ。

SELECT
  store_cd,
  variance(amount) as variance_amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  store_cd
ORDER BY
  variance_amount desc
LIMIT
  5