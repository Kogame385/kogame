#S-019: レシート明細テーブル（receipt）に対し、1件あたりの売上金額（amount）が高い順にランクを付与し、先頭10件を抽出せよ。項目は顧客ID（customer_id）、売上金額（amount）、付与したランクを表示させること。なお、売上金額（amount）が等しい場合は同一順位を付与するものとする。

SELECT
  customer_id,
  amount,
  rank() over(ORDER BY amount desc) as rank_result 
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
ORDER BY 
  amount desc
LIMIT
  10