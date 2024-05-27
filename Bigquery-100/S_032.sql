#S-032: レシート明細テーブル（receipt）の売上金額（amount）について、25％刻みでパーセンタイル値を求めよ。

SELECT DISTINCT
  percentile_cont(amount, 0) over() as min_,
  percentile_cont(amount,0.25) over()as per_25,
  percentile_cont(amount,0.50) over()as per_50,
  percentile_cont(amount,0.75) over()as per_75,
  percentile_cont(amount,1) over()as max_
  
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt
