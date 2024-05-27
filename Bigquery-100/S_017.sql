#S-017: 顧客テーブル（customer）を生年月日（birth_day）で高齢順にソートし、先頭10件を全項目表示せよ。

SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.customer
ORDER BY birth_day asc
LIMIT
  10