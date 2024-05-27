#S-037: 商品テーブル（product）とカテゴリテーブル（category）を内部結合し、商品テーブルの全項目とカテゴリテーブルの小区分名（category_small_name）を10件表示させよ。

SELECT
  p.*,
  c.category_small_name
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.product as p
INNER JOIN
  sublime-vial-423209-e6.100knockspreprocessBigQuery.category as c
ON
  p.category_small_cd=c.category_small_cd
LIMIT
  10