#S-014: 顧客テーブル（customer）から、ステータスコード（status_cd）の末尾が数字の1〜9で終わるデータを全項目抽出し、10件だけ表示せよ。


SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.customer
WHERE
  regexp_contains(status_cd, '[1-9]$')
LIMIT
  10
