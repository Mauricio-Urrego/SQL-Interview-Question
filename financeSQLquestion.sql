SELECT * from (
Select (CASE
	WHEN g.month = 1 AND sr.StartMonth <= 1 THEN 1
	WHEN g.month = 2 AND sr.StartMonth <= 2 THEN 2
	WHEN g.month = 3 AND sr.StartMonth <= 3 THEN 3
	WHEN g.month = 4 AND sr.StartMonth <= 4 THEN 4
	WHEN g.month = 5 AND sr.StartMonth <= 5 THEN 5
	WHEN g.month = 6 AND sr.StartMonth <= 6 THEN 6
	WHEN g.month = 7 AND sr.StartMonth <= 7 THEN 7
	WHEN g.month = 8 AND sr.StartMonth <= 8 THEN 8
	WHEN g.month = 9 AND sr.StartMonth <= 9 THEN 9
	WHEN g.month = 10 AND sr.StartMonth <= 10 THEN 10
	WHEN g.month = 11 AND sr.StartMonth <= 11 THEN 11
	WHEN g.month = 12 AND sr.StartMonth <= 12 THEN 12
	WHEN g.month = 13 AND sr.StartMonth <= 13 THEN 13
	WHEN g.month = 14 AND sr.StartMonth <= 14 THEN 14
	WHEN g.month = 15 AND sr.StartMonth <= 15 THEN 15
	WHEN g.month = 16 AND sr.StartMonth <= 16 THEN 16
	WHEN g.month = 17 AND sr.StartMonth <= 17 THEN 17
	WHEN g.month = 18 AND sr.StartMonth <= 18 THEN 18
ELSE 0 END) as OutputMonth,
g.month, sr.startmonth, sr.FirstName, qt.DealersSigned, qt.ApplicationsReceived, qt.LoansSigned, g.Dealers, g.Applications, g.Loans

From salesrep sr 
JOIN quotatracker qt ON 
sr.saleskey = qt.salesrepid, goals g
) a
Where NOT OutputMonth = 0
ORDER BY outputmonth ASC;
