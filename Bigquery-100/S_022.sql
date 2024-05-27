#S-022: レシート明細テーブル（receipt）の顧客ID（customer_id）に対し、ユニーク件数をカウントせよ。

SELECT
  count(distinct customer_id)
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt