#S-018: 顧客テーブル（customer）を生年月日（birth_day）で若い順にソートし、先頭10件を全項目表示せよ。

SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.customer
ORDER BY birth_day desc
LIMIT 10
