
-- ****** TSQL ******

PRINT 'Hello World'

DECLARE @myVariable INT --declare var so it knows what variable type is going to be saved
SET @myVariable = 6 --set values
PRINT @myVariable

DECLARE @var1 INT, @var2 INT
/*SET @var1 = 3
SET @var2 = 5*/

--PRINT 'Having fun with' + ' TSQL and MS SQL SERVER!'

--PRINT 'I have ' + CONVERT(varchar(50),@var1) + ' dollars...'

SET @var1 = 7
SET @var2 = 5

PRINT 'Variable 1 = ' + CONVERT(varchar(5),@var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(varchar(5),@var2) + CHAR(13) + 'Total: '
PRINT @var1 + @var2

/*
IF @var1 <= 3
	BEGIN
		PRINT 'Variable 1 <= ' + CONVERT(varchar(5),@var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not < ' + CONVERT(varchar(5),@var1) + CHAR(13)
	END
*/

IF @var1 < 2
	BEGIN
		PRINT '@var1 1 < 2 '
	END
ELSE IF @var1 > 1 and @var1 < 3
	BEGIN
		PRINT '@var1 > 1 and @var1 < 3'
	END
ELSE IF @var1 = 4 or @var1 < 6
	BEGIN
		PRINT '@var1 = 4 or @var1 < 6'
	END
ELSE
	PRINT '@var1 does not qualify!'


