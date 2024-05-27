#S-009: 以下の処理において、出力結果を変えずにORをANDに書き換えよ。
#select * from store where not (prefecture_cd = '13' or floor_area > 900)


SELECT 
  * 
FROM
  sublime-vial-423209-e6.100knockspreprocessBigQuery.store 
WHERE prefecture_cd != '13' and floor_area <= 900