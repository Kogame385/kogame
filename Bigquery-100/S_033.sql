#S-033: レシート明細テーブル（receipt）に対し、店舗コード（store_cd）ごとに売上金額（amount）の平均を計算し、330以上のものを抽出せよ。

SELECT
  store_cd,
  avg(amount) as avg_amount
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
GROUP BY
  store_cd
HAVING
  avg(amount) >=330