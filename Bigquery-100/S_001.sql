#S-001: レシート明細テーブル（receipt）から全項目の先頭10件を表示し、どのようなデータを保有しているか目視で確認せよ。

SELECT
  *
FROM
  `sublime-vial-423209-e6.100knockspreprocessBigQuery.receipt`
LIMIT 10