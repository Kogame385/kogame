#S-036: レシート明細テーブル（receipt）と店舗テーブル（store）を内部結合し、レシート明細テーブルの全項目と店舗テーブルの店舗名（store_name）を10件表示させよ。

SELECT
  r.*,
  s.store_name
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt as r
INNER JOIN
  sublime-vial-423209-e6.100knockspreprocessBigQuery.store as s
ON
  r.store_cd=s.store_cd
LIMIT
  10