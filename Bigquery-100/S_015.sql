#S-015: 顧客テーブル（customer）から、ステータスコード（status_cd）の先頭がアルファベットのA〜Fで始まり、末尾が数字の1〜9で終わるデータを全項目抽出し、10件だけ表示せよ。


SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.customer
WHERE
  regexp_contains(status_cd, '^[A:F]. *[1-9]$')
LIMIT
  10