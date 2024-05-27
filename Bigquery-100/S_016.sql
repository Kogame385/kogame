#S-016: 店舗テーブル（store）から、電話番号（tel_no）が3桁-3桁-4桁のデータを全項目表示せよ。

SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.store
WHERE
  regexp_contains(tel_no, "^[0-9]{3}-[0-9]{3}-[0-9]{4}$")