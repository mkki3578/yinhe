USE ydkh
GO

-----���㿪ʼ----------------------------------------------------------------------------
----����������ռ��
UPDATE Ӫҵ�������ͻ��� SET �·����� = '', ���ʲ� = 0
GO
UPDATE Ӫҵ�������ͻ��� SET �·����� = b.������, ���ʲ� = b.zzc FROM Ӫҵ�������ͻ��� a, crmcd b WHERE a.��̨�ͻ����� = b.��̨�ͻ�����
GO
UPDATE �¶ȿ��� SET �ͻ��� = 0, ���ʲ� = 0, ������ռ��13 = 0, ȫ�г�����13 = 0, ��Ӷ13 = 0, ���ھ�Ӷ13 = 0, ����13 = 0, Ϣ��13 = 0, ������13 = 0, ˮ��һ13 = 0, ˮ�Ƕ�13 = 0
GO
DROP TABLE kkk
GO
SELECT  �·�����,  COUNT(*)   AS num,  SUM(���ʲ�)  AS zzc,  SUM(��Ӷ13) AS ��Ӷ, SUM(���ھ�Ӷ13)  AS ���ھ�Ӷ,  SUM(����13) AS ����,  SUM(����Ϣ��13) AS Ϣ��,
  SUM(����������13) / 365  AS ������,  SUM(ˮ��1�Ż���13) / 365 AS ˮ��1,  SUM(ˮ��2�Ż���13) / 365 AS ˮ��2 INTO kkk FROM Ӫҵ�������ͻ��� GROUP BY �·�����
GO
UPDATE �¶ȿ��� 
SET �ͻ��� = b.num, ���ʲ� = b.zzc / 10000, ��Ӷ13 = b.��Ӷ, ���ھ�Ӷ13 = b.���ھ�Ӷ, ����13 = b.����, Ϣ��13 = b.Ϣ��, ������13 = b.������, ˮ��һ13 = b.ˮ��1, ˮ�Ƕ�13 = b.ˮ��2
FROM �¶ȿ��� a, kkk b WHERE a.���� = b.�·�����
GO
UPDATE �¶ȿ��� SET ������13 = ������13 * �ֶα�ʶ1, ˮ��һ13 = ˮ��һ13 * �ֶα�ʶ2, ˮ�Ƕ�13 = ˮ�Ƕ�13 * �ֶα�ʶ2 
 FROM �¶ȿ��� a, ���ֲ����� b WHERE �������� = '����ϵ��ϵ��'
GO
UPDATE �¶ȿ��� SET ȫ�г�����13=�ֶα�ʶ1 FROM �¶ȿ��� a, ���ֲ����� b  WHERE �������� = 'ȫ�г�����'

UPDATE �¶ȿ��� SET ������ռ��13 = (��Ӷ13 + ���ھ�Ӷ13 + ����13 + Ϣ��13 + ������13 + ˮ��һ13 + ˮ�Ƕ�13) / ȫ�г�����13 / 10000
---------------------------------------------------------------------------------
-------------------��ʱ����
--������Ӷ���� 110810,110811
--������ȯ��ӶժҪ,110310,110312,120159
--select * from digest where digestname like '%����%' �鳭ժҪ
--select distinct operdate,name,custid,right(remark,10) from his..h_loguser where  operdate>'20140101'  and operdate<'20140401'
--and digestid in ('110810','110811')  order by operdate
--go
------------------����������ռ��
---------------******��ʼ���㱾��������������******--------------------
UPDATE �¶ȿ���
SET �ͻ��� = 0, ���ʲ� = 0, �����ʲ� = 0,  ���� = 0, Ϣ�� = 0, ������ռ��ֵ = 0, ��ʧ�ͻ��� = 0, ��ʧ�ʲ� = 0, ��ʧ��Ӷ�� = 0,���ڿ���=0,
  ��Ӷ��ʧ  = 0, ��ʧӶ������ = 0, ��ʧ�ʲ����� = 0, ������ʧ�ʲ� = 0, ��ʧӶ����� = 0, ��ʧ�ʲ����� = 0, ��Ӷ = 0, ���ھ�Ӷ = 0, ������ = 0, ˮ��1 = 0, ˮ��2 = 0, ˮ��3 = 0, ˮ��5 = 0, ��Ʒ�������� = 0
GO
UPDATE �¶ȿ��� SET �¿��� = 0, �¿���1w = 0, �¿���10w = 0, �¿���50w = 0, Ȩ���Ʒ = 0, �̶���Ʒ = 0, ���񽱽𷢷�ֵ=0,���񽱽����ֵ=0

UPDATE �¶ȿ��� SET �����г����� = 0, ����ϼ� = 0, ����ɻ��� = 0, ��ɻ��� = 0, ���ͻ� = 0, �ʲ����׶� = 0, ����Ŀ�괴�ն� = 0, ������ռ�� = 0, ����ϵ�� = 0

UPDATE �¶ȿ��� SET  ���ŵ����� = 0,���ŵ�����ע='', ���񽱽�Ԥ����ֵ=0,����ĩ���=0,����ĩ�����ռ��=0,����ĩ���=0,����ĩ�����ռ��=0 , �����̶���Ʒ=0, ��Ӷ�ͻ�=0

UPDATE �¶ȿ��� SET �ش�����ϵ��Ȩ��1 = �ֶα�ʶ1, �ش�����ϵ��Ȩ��2 = �ֶα�ʶ2, �ش�����ϵ��Ȩ��3 = ����1, �ش�����ϵ��Ȩ��4 = ����2, �ش�����ϵ��Ȩ��5 = ����3
FROM �¶ȿ��� a, ���ֲ����� b WHERE �������� = '�ش󿼺�����Ȩ��'

UPDATE �¶ȿ��� SET �����г�����=����1 FROM �¶ȿ��� a, ���ֲ����� b  WHERE �������� = 'ȫ�г�����'

--update crmcd set ������=b.Ա������ from crmcd a, ��ؿͻ��� b where a.��̨�ͻ�����=b.�ʽ��˺�
--update Ӫҵ�������ͻ��� set �·�����=b.Ա������ from Ӫҵ�������ͻ��� a, ��ؿͻ��� b where a.��̨�ͻ�����=b.�ʽ��˺�
go

----------------------------�������----------------------------------
--����ͻ���,���ʲ�
DROP TABLE ttt
GO
SELECT  ������,  COUNT(*) AS num,  SUM(zzc) AS zzc INTO ttt FROM crmcd GROUP BY ������
GO
GO
UPDATE �¶ȿ��� SET �ͻ��� = b.num, ���ʲ� = b.zzc / 10000 FROM �¶ȿ��� a, ttt b WHERE a.���� = b.������
GO

---Ȩ���Ʒ����
DROP TABLE tttt
GO
SELECT ������, SUM(CAST(��� AS MONEY)) / 10000 AS num INTO tttt  FROM ��Ʒ��ϸ2014
  WHERE �������� = 'Ȩ����' AND LEFT(CONVERT(CHAR(8), CONVERT(INT, ����)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') GROUP BY ������
GO
UPDATE �¶ȿ��� SET Ȩ���Ʒ = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

---�̶���Ʒ����
DROP TABLE tttt
GO
SELECT ������, SUM(CAST(��� AS MONEY)) / 10000 AS num INTO tttt FROM ��Ʒ��ϸ2014
WHERE �������� = '�̶���' AND LEFT(CONVERT(CHAR(8), CONVERT(INT, ����)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') 
and �ͻ����� not in (  select �ͻ����� from ��Ʒ��ϸ2014 where ���� < convert(char(8),convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112),112 )
                   and  ����> = convert(char(8),DATEADD(month,-3,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112)),112 )
                   and �������� = '�̶���' )
GROUP BY ������
GO
UPDATE �¶ȿ��� SET �̶���Ʒ = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

---�����̶���Ʒ����
DROP TABLE tttt
GO
SELECT ������, SUM(CAST(��� AS MONEY)) / 10000 AS num INTO tttt FROM ��Ʒ��ϸ2014
WHERE �������� = '�̶���' AND LEFT(CONVERT(CHAR(8), CONVERT(INT, ����)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') 
and �ͻ����� in (  select �ͻ����� from ��Ʒ��ϸ2014 where ���� < convert(char(8),convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112),112 )
                   and  ����> = convert(char(8),DATEADD(month,-3,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112)),112 )
                   and �������� = '�̶���' )
GROUP BY ������
GO
UPDATE �¶ȿ��� SET �����̶���Ʒ = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

--��Ʒ��������
DROP TABLE tttt
GO
SELECT ������, SUM(CAST(�������� AS MONEY)) AS num INTO tttt FROM ��Ʒ��ϸ2014 
 WHERE LEFT(CONVERT(CHAR(8), CONVERT(INT, ����)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') GROUP BY ������
GO
UPDATE �¶ȿ��� SET ��Ʒ�������� = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

---�¿���,�����ʲ�
DROP TABLE tttt
GO
SELECT ������,COUNT(*) AS num INTO tttt FROM crmcd
WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') AND zzc >= 500000  AND ����Ӫҵ�� LIKE '%����%' GROUP BY ������
GO
UPDATE �¶ȿ��� SET �¿���50w = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

DROP TABLE tttt
GO
SELECT ������, COUNT(*) AS num INTO tttt FROM crmcd WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') 
  AND zzc >= 100000 AND zzc < 500000       AND ����Ӫҵ�� LIKE '%����%' GROUP BY ������
GO
UPDATE �¶ȿ��� SET �¿���10w = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

DROP TABLE tttt
GO
SELECT ������,COUNT(*) AS num INTO tttt FROM crmcd
WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') AND zzc >= 10000 AND zzc < 100000 AND ����Ӫҵ�� LIKE '%����%' GROUP BY ������
GO
UPDATE �¶ȿ��� SET �¿���1w = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

DROP TABLE tttt
GO
SELECT ������, COUNT(*) AS num INTO tttt FROM crmcd
WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') AND zzc < 10000 AND ����Ӫҵ�� LIKE '%����%' GROUP BY ������
GO
UPDATE �¶ȿ��� SET �¿��� = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

DROP TABLE tttt
GO
SELECT ������,SUM(zzc) / 10000 AS zzc INTO tttt FROM crmcd WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') 
  AND ����Ӫҵ�� LIKE '%����%' GROUP BY ������
GO
UPDATE �¶ȿ��� SET �����ʲ� = b.zzc FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO


---�����¿���
DROP TABLE tttt
GO
SELECT ������, COUNT(*) AS num INTO tttt FROM crmcd 
  WHERE ��̨�ͻ����� IN (SELECT �ͻ����� FROM ���ڿ���  WHERE LEFT(CONVERT(CHAR(8), CONVERT(INT, ��������)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__'))
GROUP BY ������
GO
UPDATE �¶ȿ��� SET ���ڿ��� = b.num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������
GO

--�����޸�20160316
--����ĩ���
drop table ttt
go
select * into ttt from ��ʷ������ȯ���
 where left(convert(char(8),convert(int,��������)),6)=left(convert(char(8),DATEADD(month,-1,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112)),112 ),6)
-- where left(convert(char(8),convert(int,��������)),6)=left(convert(char(8),DATEADD(month,-1,convert(datetime,'201602'+'01',112)),112 ),6)
go
ALTER TABLE  ttt ADD ������ char(20)
go
update ttt set ������=''
go
update ttt set ������=b.������ from ttt a,crmcd b where a.�ͻ�����=b.��̨�ͻ�����
go
drop table tttt
go
select ������,sum(�ܸ�ծ)/10000 as zzc into tttt from ttt where �������� in ( select max(��������) from ttt)  group by ������
go
update �¶ȿ��� set ����ĩ���=b.zzc from �¶ȿ��� a,tttt b where a.����=b.������
go

--����ĩ���
drop table ttt
go
select * into ttt from ��ʷ������ȯ��� where left(convert(char(8),convert(int,��������)),6) in ('__REPLACE_YEAR____REPLACE_MONTH__')
--select * into ttt from ��ʷ������ȯ��� where left(convert(char(8),convert(int,��������)),6) in ('20602')
go
ALTER TABLE  ttt ADD ������ char(20)
go
update ttt set ������=''
go
update ttt set ������=b.������ from ttt a,crmcd b where a.�ͻ�����=b.��̨�ͻ�����
go
drop table tttt
go
select ������,sum(�ܸ�ծ)/10000 as zzc into tttt from ttt where �������� in ( select max(��������) from ttt)  group by ������
go
update �¶ȿ��� set ����ĩ���=b.zzc from �¶ȿ��� a,tttt b where a.����=b.������
go


------------------------------------------
--------------��ʧ�ͻ�------------
DROP TABLE �ͻ���ʧ4
GO
SELECT ����Ӫҵ��, ��̨�ͻ�����, �ͻ�����,��������,������, CONVERT(MONEY, ���꾻Ӷ��) AS jsxf INTO �ͻ���ʧ4
FROM crmcd WHERE �������� >= '__REPLACE_YEAR__0101'  AND ��̨�ͻ����� NOT IN (SELECT �ͻ����� FROM ����ʧ�ͻ�) and �ͻ�״̬='����'
GO
ALTER TABLE �ͻ���ʧ4 ADD �ʲ� MONEY
GO
UPDATE �ͻ���ʧ4 SET �ʲ� = 0
GO

--��ʧӶ��
DECLARE @CUSTID CHAR(12), @jsxf MONEY, @operdate CHAR(8)

DECLARE dxsql CURSOR FOR SELECT DISTINCT ��̨�ͻ�����,�������� FROM �ͻ���ʧ4  WHERE ����Ӫҵ�� = '�ɶ�����·Ӫҵ��'
OPEN dxsql
FETCH dxsql INTO @CUSTID, @operdate
WHILE @@FETCH_STATUS = 0
BEGIN
  SELECT @jsxf = SUM(FEE_JSXF) FROM ��ʷ�ɽ�cd
  WHERE �ɽ����� > CONVERT(CHAR(8), DATEADD(MONTH, -12, CONVERT(DATETIME, @operdate, 112)), 112) AND FUNDID = @CUSTID
  UPDATE �ͻ���ʧ4   SET jsxf = @jsxf  WHERE ��̨�ͻ����� = @CUSTID
  SELECT @jsxf = 0
  FETCH dxsql INTO @CUSTID, @operdate
END
CLOSE dxsql
DEALLOCATE dxsql
GO

--��ʧ�ʲ�
DECLARE @CUSTID CHAR(12), @zc MONEY, @operdate CHAR(8)

DECLARE dxsql CURSOR FOR SELECT DISTINCT ��̨�ͻ�����, �������� FROM �ͻ���ʧ4
OPEN dxsql
FETCH dxsql INTO @CUSTID, @operdate
WHILE @@FETCH_STATUS = 0
BEGIN
  --    select @zc=max(�ʲ���ֵ) from ��ʧ�ͻ�crmcd2013  where �ʽ��˺�=@CUSTID
  SELECT @zc = max(�ʲ���ֵ)  FROM ��ʧ�ͻ�CRM  WHERE �ʽ��˺� = @CUSTID
        AND ͳ���·� > LEFT(CONVERT(CHAR(8), DATEADD(MONTH, -7, CONVERT(DATETIME, @operdate, 112)), 112), 6)
  UPDATE �ͻ���ʧ4   SET �ʲ� = @zc  WHERE ��̨�ͻ����� = @CUSTID
  SELECT @zc = 0
  FETCH dxsql INTO @CUSTID, @operdate
END
CLOSE dxsql
DEALLOCATE dxsql
GO

----------
ALTER TABLE �ͻ���ʧ4 ADD ϵ�� MONEY
GO
UPDATE �ͻ���ʧ4 SET ϵ�� = 0
GO
UPDATE �ͻ���ʧ4 SET ϵ�� = 1 WHERE jsxf <= 3000
UPDATE �ͻ���ʧ4 SET ϵ�� = jsxf / 3000 WHERE jsxf > 3000
GO
UPDATE �ͻ���ʧ4 SET ϵ�� = 5 WHERE ϵ�� > 5
GO

--ɾ������Ӫҵ����ת�ͻ�
DELETE �ͻ���ʧ4 WHERE ��̨�ͻ����� IN (SELECT �ͻ����뽨��  FROM ����Ӫҵ���¶ȿ���)
GO

--ͳ�Ʊ����ۼ���ʧ�ͻ�Ӷ������,�ʲ�����
DROP TABLE ttt
GO
SELECT ������, SUM(jsxf / 12 * (ϵ��)) AS ��ʧӶ������,  SUM(�ʲ�) * 0.005 AS ��ʧ�ʲ����� INTO ttt  FROM �ͻ���ʧ4
WHERE �������� < CONVERT(CHAR(8), DATEADD(MONTH, 1, CONVERT(DATETIME, '__REPLACE_YEAR____REPLACE_MONTH__' + '01', 112)), 112) GROUP BY ������
GO
UPDATE �¶ȿ��� SET ��ʧӶ������ = isnull(b.��ʧӶ������,0) , ��ʧ�ʲ����� = isnull(b.��ʧ�ʲ�����,0) FROM �¶ȿ��� a, ttt b WHERE ���� = ������
GO

--ͳ�Ƶ�����ʧ�ͻ�Ӷ��,�ʲ�;��ʧӶ�����,��ʧ�ʲ�����
DROP TABLE ttt
GO
SELECT   ������, isnull(SUM(jsxf),0)  AS lssxf����, COUNT(*) AS lskhs����, isnull(SUM(�ʲ�)/10000,0)  AS lszc����, isnull(SUM(jsxf / 12) * 3,0) AS ��ʧӶ���������,
  isnull(SUM(�ʲ�) * 0.003,0) AS ��ʧ�ʲ�������� INTO ttt FROM �ͻ���ʧ4
-- WHERE LEFT(��������, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__')
 --�޸�20160620
 WHERE �������� > = convert(char(8),DATEADD(month,-3,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__'+'01',112)),112 )
 GROUP BY ������
GO
UPDATE �¶ȿ��� SET ��ʧ��Ӷ�� = b.lssxf����, ��ʧ�ͻ��� = isnull(b.lskhs����,0), ��ʧ�ʲ� = b.lszc����, 
                   ��ʧӶ����� =b.��ʧӶ���������, ��ʧ�ʲ����� = b.��ʧ�ʲ��������
  FROM �¶ȿ��� a, ttt b WHERE ���� = ������
GO

--------������ʧ�ͻ����˿���------
update ������ʧ�ͻ����� set �꾻Ӷ=0,ϵ��=0
go
--��ʧӶ��
declare @CUSTID char(12), @jsxf money

declare dxsql cursor for select distinct ��̨�ͻ����� from ydkh..������ʧ�ͻ�����
open dxsql
fetch dxsql into @CUSTID
WHILE @@FETCH_STATUS = 0
begin      
       select @jsxf=sum(FEE_JSXF) from ydkh..��ʷ�ɽ�cd
         where �ɽ����� > convert(char(8),DATEADD(month,-12,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH__' + '01',112)),112 ) and FUNDID=@CUSTID
    update  ydkh..������ʧ�ͻ����� set �꾻Ӷ= @jsxf where ��̨�ͻ�����=@CUSTID
   select @jsxf=0
   fetch dxsql into @CUSTID
end
close dxsql
deallocate dxsql         
go
----------
update ������ʧ�ͻ����� set ϵ��=1 where CAST(�꾻Ӷ AS MONEY)<=3000
update ������ʧ�ͻ����� set ϵ��= CAST(�꾻Ӷ AS MONEY)/3000 where  CAST(�꾻Ӷ AS MONEY)>3000
go
update ������ʧ�ͻ����� set ϵ��=5  where  CAST(ϵ�� AS MONEY)>5
go
drop table ttt
go
select ������, sum( CAST(�꾻Ӷ AS MONEY)) as �꾻Ӷ, sum(CAST(�꾻Ӷ AS MONEY)/12*(CAST(ϵ�� AS MONEY))) as ��ʧӶ������,
sum(convert(money,�³��ʲ�))*0.005 as ������ʧ�ʲ�   into ttt from ������ʧ�ͻ����� group by ������
go
update �¶ȿ��� set ��ʧ��Ӷ��=��ʧ��Ӷ��+isnull(b.�꾻Ӷ,0), ��ʧӶ������=a.��ʧӶ������+isnull(b.��ʧӶ������,0) , ������ʧ�ʲ�=isnull(b.������ʧ�ʲ�,0)
 from �¶ȿ��� a, ttt b where ����=������
go

-----------------------********��Ӷ��ʧ********------------------------------------------
DROP TABLE ��Ӷ��ˮtt
GO
SELECT  Col001 AS ����,  Col002 AS �ͻ�����,  Col003 AS �ͻ�����,  Col004 AS ����1,  Col005 AS ����2 INTO ��Ӷ��ˮtt 
  FROM ��Ӷ��ˮ2015  WHERE abs(CONVERT(MONEY, Col005) - CONVERT(MONEY, Col004)) / CONVERT(MONEY, Col004) > 0.3 AND CONVERT(MONEY, Col005) < 0.0008
      AND LEFT(CONVERT(CHAR(8), CONVERT(INT, Col001)), 6) = '__REPLACE_YEAR____REPLACE_MONTH__'   ORDER BY Col001
GO
ALTER TABLE ��Ӷ��ˮtt ADD ������ CHAR(20)
ALTER TABLE ��Ӷ��ˮtt ADD lssxf MONEY
GO
UPDATE ��Ӷ��ˮtt SET lssxf = 0, ������ = ''
GO
UPDATE ��Ӷ��ˮtt SET ������ = b.������ FROM ��Ӷ��ˮtt a, crmcd b WHERE a.�ͻ����� = b.��̨�ͻ�����
GO
--update ��Ӷ��ˮtt set lssxf=���꾻Ӷ�� from ��Ӷ��ˮtt a, crmcd b where a.�ͻ�����=b.��̨�ͻ�����
-- GO
--------����Ӷ����ʧ-----------------------------------------
DECLARE @CUSTID CHAR(12), @operdate CHAR(8), @lssxf MONEY
DECLARE dxsql CURSOR FOR SELECT DISTINCT �ͻ�����, CONVERT(CHAR(8), CONVERT(INT, ����)) AS ����  FROM ��Ӷ��ˮtt  ORDER BY ����
OPEN dxsql
FETCH dxsql INTO @CUSTID, @operdate
WHILE @@FETCH_STATUS = 0
BEGIN
  SELECT @lssxf = SUM(FEE_JSXF)   FROM ��ʷ�ɽ�cd 
  WHERE �ɽ����� > CONVERT(CHAR(8), DATEADD(MONTH, -12, CONVERT(DATETIME, @operdate, 112)), 112) AND FUNDID = @CUSTID
  UPDATE ��Ӷ��ˮtt   SET lssxf = isnull(@lssxf, 0)   WHERE �ͻ����� = @CUSTID
  FETCH dxsql   INTO @CUSTID, @operdate
END
CLOSE dxsql
DEALLOCATE dxsql
GO

--------------------
DROP TABLE ttt
GO
SELECT  ������,  SUM(lssxf * ((CONVERT(MONEY, ����1) - CONVERT(MONEY, ����2)) / CONVERT(MONEY, ����1))) / 12 AS lssxf 
  INTO ttt FROM ��Ӷ��ˮtt GROUP BY ������
-- where LEFT(����,6) in ('__REPLACE_YEAR____REPLACE_MONTH__')
GO
UPDATE �¶ȿ��� SET ��Ӷ��ʧ = b.lssxf FROM �¶ȿ��� a, ttt b WHERE ���� = ������
GO

-----------------------********��Ӷ�ͻ��۷�********------------------------------------------
DROP TABLE ��Ӷ��ˮtt
GO
SELECT  Col001 AS ����,  Col002 AS �ͻ�����,  Col003 AS �ͻ�����,  Col004 AS ����1,  Col005 AS ����2 INTO ��Ӷ��ˮtt FROM ��Ӷ��ˮ2015  
   WHERE CONVERT(MONEY, Col005) < 0.0006 AND LEFT(CONVERT(CHAR(8), CONVERT(INT, Col001)), 6) = '__REPLACE_YEAR____REPLACE_MONTH__'   ORDER BY Col001
GO
ALTER TABLE ��Ӷ��ˮtt ADD ������ CHAR(20)
GO
UPDATE ��Ӷ��ˮtt SET ������ = ''
GO
UPDATE ��Ӷ��ˮtt SET ������ = b.������ FROM ��Ӷ��ˮtt a, crmcd b WHERE a.�ͻ����� = b.��̨�ͻ�����
GO

DROP TABLE ttt
GO
SELECT  ������, count(*) as num INTO ttt FROM ��Ӷ��ˮtt GROUP BY ������
GO
UPDATE �¶ȿ��� SET ��Ӷ�ͻ� = b.num FROM �¶ȿ��� a, ttt b WHERE ���� = ������
GO

---------------------------------------------------------------------------------------------------------------------------------------------------
----�����Ʒ���루����������,ˮ��1,ˮ��2��
UPDATE ��ʷ�ֽ��Ʒ��� SET �ͻ�����= b.��̨�ͻ����� FROM ��ʷ�ֽ��Ʒ��� a, crmcd b WHERE a.�ͻ���� = b.�ͻ���� and �ͻ�����=0
go
DROP TABLE ttt
GO
SELECT * INTO ttt FROM ��ʷ�ֽ��Ʒ���  WHERE LEFT(CONVERT(CHAR(8), CONVERT(INT, ����)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__')
      AND ������� IN ('������', 'AA0007', 'AA0006', 'AA0038', 'AA0042')
GO
UPDATE ttt SET ������� = ������� * 10 WHERE ������� IN ('AA0007', 'AA0006', 'AA0038', 'AA0042') AND ���� IN ('20160205')
GO
ALTER TABLE ttt ADD ������ CHAR(20)
GO
UPDATE ttt SET ������ = ''
GO
UPDATE ttt SET ������ = b.������ FROM ttt a, crmcd b WHERE a.�ͻ����� = b.��̨�ͻ�����
GO
UPDATE ttt SET ������ = '����VIP' WHERE ������ IN ('����', '��־ǿ')
GO
--
DROP TABLE tttt
GO
SELECT ������,�������,SUM(�������) AS num INTO tttt FROM ttt GROUP BY ������, �������
GO
UPDATE �¶ȿ��� SET ������ = num / 365 FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������ AND b.������� = '������'
UPDATE �¶ȿ��� SET ˮ��1 = num / 365 FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������ AND ������� = 'AA0007'
UPDATE �¶ȿ��� SET ˮ��2 = num / 365 FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������ AND ������� = 'AA0006'
UPDATE �¶ȿ��� SET ˮ��3 = num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������ AND ������� = 'AA0038'
UPDATE �¶ȿ��� SET ˮ��5 = num FROM �¶ȿ��� a, tttt b WHERE a.���� = b.������ AND ������� = 'AA0042'
GO
UPDATE �¶ȿ��� SET ������ = ������ * �ֶα�ʶ1, ˮ��1 = ˮ��1 * �ֶα�ʶ2, ˮ��2 = ˮ��2 * �ֶα�ʶ2 FROM �¶ȿ��� a, ���ֲ����� b WHERE �������� = '����ϵ��ϵ��'
UPDATE �¶ȿ��� SET ��Ʒ�������� = ��Ʒ�������� + (ˮ��3 + ˮ��5) * 0.01 / 365
GO

---��Ӫҵ�������ͻ���--����Ӷ��Ϣ��,Ϊ�������⴦��ͻ�����-------------
UPDATE Ӫҵ�������ͻ��� SET ����Ϣ��14 = 0, ��Ӷ14 = 0, ���ھ�Ӷ14 = 0, ����14 = 0
------����14
DROP TABLE ttt
GO
SELECT   CUSTID,  SUM(CAST(FUNDEFFECT AS MONEY)) AS num INTO ttt FROM ��Ϣ��ˮ   WHERE LEFT(BIZDATE, 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__')  GROUP BY CUSTID
GO
UPDATE Ӫҵ�������ͻ��� SET ����14 = b.num * 8.1465 FROM Ӫҵ�������ͻ��� a, ttt b  WHERE a.��̨�ͻ����� = b.CUSTID
GO
----Ϣ��
DROP TABLE ttt
GO
SELECT CUSTID, SUM(FUNDEFFECT) AS num INTO ttt FROM ��Ϣ��  WHERE LEFT(CONVERT(CHAR(8), CONVERT(INT, SYSDATE)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__')
GROUP BY CUSTID
GO
UPDATE Ӫҵ�������ͻ��� SET ����Ϣ��14 = num FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.CUSTID
GO

--��Ӷ
drop table ttt
go
select FUNDID ,SUM(FEE_JSXF) as num into ttt from ��ʷ�ɽ�cd where left(�ɽ�����,6) in ('__REPLACE_YEAR____REPLACE_MONTH__') group by FUNDID
go
UPDATE Ӫҵ�������ͻ��� SET ��Ӷ14 = b.num FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.FUNDID 
GO

----���ھ�Ӷ----
DROP TABLE ttt
GO
SELECT  �ͻ�����, ҵ���ʾ, SUM(��������) AS �������� INTO ttt FROM jqrzrq  
 WHERE LEFT(CONVERT(CHAR(8), CONVERT(INT, ��������)), 6) IN ('__REPLACE_YEAR____REPLACE_MONTH__') GROUP BY �ͻ�����, ҵ���ʾ
GO
--����Ʒ��Ӷ
DROP TABLE tttt
GO
SELECT   �ͻ�����, SUM(��������) AS num INTO tttt FROM ttt  WHERE ҵ���ʾ IN ('����Ʒ����', '����Ʒ����') GROUP BY �ͻ�����
GO
UPDATE Ӫҵ�������ͻ��� SET ��Ӷ14 = ��Ӷ14 + b.num FROM Ӫҵ�������ͻ��� a, tttt b WHERE a.��̨�ͻ����� = b.�ͻ�����
GO
--���ý��׾�Ӷ
DROP TABLE tttt
GO
SELECT  �ͻ�����, SUM(��������) AS num INTO tttt FROM ttt  WHERE ҵ���ʾ IN ('��������', '��ȯ����', '��ȯ����', '��ȯ��ȯ')
GROUP BY �ͻ�����
GO
UPDATE Ӫҵ�������ͻ��� SET ���ھ�Ӷ14 = b.num FROM Ӫҵ�������ͻ��� a, tttt b WHERE a.��̨�ͻ����� = b.�ͻ�����
GO

------------------
DROP TABLE ttt
GO
SELECT  �·�����, SUM(����14) AS ����14, SUM(��Ӷ14) AS ��Ӷ14,SUM(���ھ�Ӷ14) AS ���ھ�Ӷ14,SUM(����Ϣ��14) AS ����Ϣ��14 INTO ttt
FROM Ӫҵ�������ͻ���  GROUP BY �·�����
-- WHERE �����ϵ <> '���ά��' 
GO
UPDATE �¶ȿ��� SET ����=����14, ��Ӷ=��Ӷ14, ���ھ�Ӷ=���ھ�Ӷ14, Ϣ��=����Ϣ��14 FROM �¶ȿ��� a, ttt b WHERE ���� = �·�����
GO

EXEC ���ּ���
go
--�������ɻ���
UPDATE �¶ȿ��� SET  ���ͻ� = CAST(b.���ͻ� AS MONEY), �ʲ����׶� = (b.���ͻ� / a.�ͻ���)  
  FROM �¶ȿ��� a,  ��Ʒ���ͳ��  b  WHERE a.���� = b.���� and a.�ͻ���<>0
go

UPDATE �¶ȿ���  SET ����ɻ��� = Ϣ�� * b.�ֶα�ʶ1 * b.�ֶα�ʶ2 * b.����1 + a.��Ӷ * b.����2 + a.���ھ�Ӷ * b.����3 - a.��ʧӶ����� - a.��ʧ�ʲ�����, 
                    ��ɻ��� = (a.Ϣ�� * b.�ֶα�ʶ1 * b.�ֶα�ʶ2 * b.����1 + a.��Ӷ * b.����2 + a.���ھ�Ӷ * b.����3 - a.��ʧӶ����� - a.��ʧ�ʲ�����) * �ʲ����׶�
FROM �¶ȿ��� a, ���ֲ����� b WHERE b.�������� = '�¶���ɻ���ϵ��'  and a.�ͻ���<>0


--��������ϵ��
UPDATE �¶ȿ��� SET ����ϼ� = ���� + Ϣ�� + ��Ӷ + ���ھ�Ӷ + ������ + ˮ��1 + ˮ��2 + ��Ʒ�������� - ��Ӷ��ʧ - ��ʧ�ʲ����� - ������ʧ�ʲ� - ��ʧӶ������

UPDATE �¶ȿ��� SET ����Ŀ�괴�ն� = ������ռ��13 * �����г����� * 10000 * ����1 FROM �¶ȿ��� a, ���ֲ����� b WHERE b.�������� = '����ϵ��ϵ��'

UPDATE �¶ȿ��� SET ������ռ��ֵ = ����ϼ� - ����Ŀ�괴�ն�

UPDATE �¶ȿ��� SET ������ռ�� = ����ϼ� / ����Ŀ�괴�ն� WHERE ����Ŀ�괴�ն� <> 0

UPDATE �¶ȿ��� SET ����ϵ�� = CASE WHEN Power(������ռ��, 3) < ����2  THEN ����2  WHEN Power(������ռ��, 3) > ����3   THEN ����3     ELSE Power(������ռ��, 3) END
FROM �¶ȿ��� a, ���ֲ����� b  WHERE b.�������� = '����ϵ��ϵ��'

UPDATE �¶ȿ��� SET ���񽱽����ֵ = ��ɻ��� * ��Ӧ��ɱ��� * ����ϵ�� * ��Ч����ϵ��


UPDATE �¶ȿ���
SET ���񽱽�Ԥ����ֵ = ���񽱽����ֵ - (���񽱽����ֵ * (1 - �ش�����ϵ��1) * �ش�����ϵ��Ȩ��1
                         + ���񽱽����ֵ * (1 - �ش�����ϵ��2) * �ش�����ϵ��Ȩ��2
                         + ���񽱽����ֵ * (1 - �ش�����ϵ��3) * �ش�����ϵ��Ȩ��3
                         + ���񽱽����ֵ * (1 - �ش�����ϵ��4) * �ش�����ϵ��Ȩ��4
                         + ���񽱽����ֵ * (1 - �ش�����ϵ��5) * �ش�����ϵ��Ȩ��5)

UPDATE �¶ȿ��� SET ���񽱽𷢷�ֵ=���񽱽�Ԥ����ֵ
----�������--------------------------------------------------------------------------------------------------------------------------------

print '---------------------------------------------'
print '*****************�¶ȿ��˼������*************'
print '---------------------------------------------'
