#S-012: 店舗テーブル（store）から横浜市の店舗だけ全項目表示せよ。

SELECT
  *
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.store
WHERE
  address like "%横浜市%"