USE ydkh
GO

--0 ���ڿ���
UPDATE ���ڿ��� SET �������� = b.Ӫҵ������ FROM ���ڿ��� a, Ӫҵ���� b WHERE a.�������� = b.Ӫҵ��
UPDATE ���ڿ��� SET �������� ='4103' where ��������='�ɶ�������·֤ȯӪ'
go

--1 ���³ɽ�cd
DELETE ���³ɽ�cd WHERE ORGID = '�ܼ�'
GO
IF not EXISTS( SELECT 1 FROM ��ʷ�ɽ�cd WHERE �ɽ����� = '__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__')
    INSERT INTO ��ʷ�ɽ�cd SELECT  '__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',  * FROM ���³ɽ�cd
GO

--2 crmcd
ALTER TABLE crmcd ADD zzc MONEY
GO
UPDATE crmcd SET zzc = 0
GO
UPDATE crmcd SET zzc = convert(MONEY, �������ʲ�)
GO
UPDATE crmcd SET zzc = zzc + CAST(ALLASSET AS MONEY) - CAST(ALLDEBTS AS MONEY) FROM crmcd a, ά�ֵ������� b WHERE a.��̨�ͻ����� = b.CUSTID
GO
UPDATE crmcd SET ������ = b.������Ա FROM crmcd a, �ݹҿ��� b WHERE a.��̨�ͻ����� = b.�ͻ���
GO
UPDATE crmcd SET �������� = b.��������, ������ = b.������ FROM crmcd a, ���ο��� b WHERE a.��̨�ͻ����� = b.�ͻ�����
GO
--update crmcd set ������='�ź���VIP'  where ��̨�ͻ����� in ( select ��̨�ͻ����� from crm160226  where ������='�ź���VIP' )
--go

--3 ����Ϣ��
DELETE ����Ϣ�� WHERE ORGID = '�ϼ�'
GO
IF not EXISTS( SELECT 1 FROM ��Ϣ�� WHERE SYSDATE IN ( select DISTINCT SYSDATE from ����Ϣ�� ))
     INSERT INTO ��Ϣ��   SELECT  SYSDATE, CUSTID, CUSTNAME, DEBTSTY005,  FUNDEFFECT,ORGID  FROM ����Ϣ��  ORDER BY SYSDATE
GO

--4
DELETE ������� WHERE ORGID = '�ϼ�'
GO
IF not EXISTS( SELECT 1 FROM ��ʷ������ȯ��� WHERE �������� IN ( select DISTINCT SYSDATE from ������� ))
    INSERT INTO ��ʷ������ȯ��� SELECT    SYSDATE,    CUSTID,    CUSTNAME,    ALLDEBTS,    DEBTSAM005,    DEBTSAM005,    ORGID  FROM �������
go

--5
DELETE ���ڳɽ� WHERE ORGIDNAME IN ('�ϼ�:', '����֤ȯ�ܲ�')
GO
UPDATE ���ڳɽ� SET ORGIDNAME = b.Ӫҵ������ FROM ���ڳɽ� a, Ӫҵ���� b WHERE a.ORGIDNAME = b.Ӫҵ��
GO
UPDATE ���ڳɽ� SET ORGIDNAME = '4108' WHERE ORGIDNAME = '��ɽ������·Ӫҵ'
UPDATE ���ڳɽ� SET ORGIDNAME = '4106' WHERE ORGIDNAME = '�ɶ�������·֤ȯӪ'
GO
--IF not EXISTS( SELECT 1 FROM jqrzrq WHERE �������� IN ( select DISTINCT MATCHAMT from ���ڳɽ� ) )
   INSERT INTO jqrzrq  SELECT CUSTID,  RTRIM(LTRIM(CUSTNAME)),  MATCHAMT,  FEE_JSXF,  FEE_SXF, BIZDATE, DIGESTNAME,
       CAST(RTRIM(LTRIM(ORGIDNAME)) AS CHAR(4)), FEE_GHF  FROM ���ڳɽ�
GO

---6
UPDATE �ֽ��Ʒ��� SET ORGIDNAME = b.Ӫҵ������ FROM �ֽ��Ʒ��� a, Ӫҵ���� b WHERE a.ORGIDNAME = b.Ӫҵ��
GO
IF not EXISTS( SELECT 1 FROM ��ʷ�ֽ��Ʒ��� WHERE ���� = convert(char(8),getdate(),112) and �������<>'������' )
   insert into ��ʷ�ֽ��Ʒ��� select convert(char(8),getdate(),112),CUSTID,CUSTNAME,OFCODE,OFNAME,OFBAL,MARKETV006,ORGIDNAME,''  from �ֽ��Ʒ���
GO

--7 ������
UPDATE ������ SET Ӫҵ������ = b.Ӫҵ������ FROM ������ a, Ӫҵ���� b WHERE a.Ӫҵ������ = b.Ӫҵ��
GO
ALTER TABLE ������ ADD ��̨�ͻ����� CHAR(12)
GO
UPDATE ������ SET ��̨�ͻ����� = ''
GO
UPDATE ������ SET ��̨�ͻ����� = b.��̨�ͻ����� FROM ������ a, crmcd b WHERE a.�ͻ���� = b.�ͻ����
GO
IF not EXISTS( SELECT 1 FROM ��ʷ�ֽ��Ʒ��� WHERE ���� IN ( select DISTINCT �ɷ����� from ������ ) and ��������='������')
   INSERT INTO ��ʷ�ֽ��Ʒ��� SELECT �ɷ�����, ��̨�ͻ�����,�ͻ�����,'������','������',�ɷ����, 0, CAST(Ӫҵ������ AS CHAR(4)) AS Ӫҵ������,�ͻ���� FROM ������
GO

---8.��Ϣ��ˮ------------------
update ��Ϣ��ˮtt set ORGIDNAME =b.Ӫҵ������ from  ��Ϣ��ˮtt a,Ӫҵ���� b WHERE a.ORGIDNAME=b.Ӫҵ��
go
IF not EXISTS( SELECT 1 FROM ��Ϣ��ˮ WHERE BIZDATE IN ( select DISTINCT BIZDATE from ��Ϣ��ˮtt ))
   insert INTO ��Ϣ��ˮ select BIZDATE,ORGIDNAME,CUSTID,CUSTNAME,MONEYTY010 as MONEYTYP, DIGESTID,FUNDEFFECT from ��Ϣ��ˮtt
go

---9.ת����ˮ------------------
IF not EXISTS( SELECT 1 FROM ����ת�� WHERE BIZDATE IN ( select DISTINCT BIZDATE from ����ת��tt ))
    insert into ����ת�� select BIZDATE,ORGIDNAME,CUSTID,CUSTNAME,MONEYTY010 as MONEYTYP, DIGESTID,FUNDEFFECT from ����ת��tt

IF not EXISTS( SELECT 1 FROM ����ת�� WHERE BIZDATE IN ( select DISTINCT BIZDATE from ����ת��tt ))
    insert into ����ת�� select BIZDATE,ORGIDNAME,CUSTID,CUSTNAME,MONEYTY011 as MONEYTYP, DIGESTID,FUNDEFFECT from ����ת��tt

---10.��Ʒ����------------------
update ��Ʒ����tt set TRDIDNAME=''
go
update ��Ʒ����tt set TRDIDNAME='�ֽ���' WHERE left(OFNAME,4)='����ˮ��'
update ��Ʒ����tt set TRDIDNAME='�ֽ���' WHERE OFNAME like '%����%'
update ��Ʒ����tt set TRDIDNAME='�ֽ���' WHERE OFNAME like '%�ֽ�%'
update ��Ʒ����tt set TRDIDNAME='�̶���' WHERE OFNAME like '%��ծ%'
go
update ��Ʒ����tt set TRDIDNAME='Ȩ����' where TRDIDNAME not in ('�ֽ���','�̶���')
go
IF not EXISTS( SELECT 1 FROM ��Ʒ���� WHERE MATCHDATE IN ( select DISTINCT MATCHDATE from ��Ʒ����tt ) )
   insert into ��Ʒ���� select * from ��Ʒ����tt
go

-----�������պϲ��ʲ�����--------------------------
truncate table ��Ʒ���tt
go
declare @khrq char(8)
select @khrq=max(��������)  from crmcd 
IF not EXISTS(SELECT 1 FROM ��ʷ�ʲ��� WHERE �ʲ����� = @khrq)
begin
   insert into ��ʷ�ʲ��� select @khrq as �ʲ�����,�ͻ����,��̨�ͻ�����,�ͻ�����,zzc,0.0 as ��Ʒ��ֵ, 0.0 as Ȩ�����ʲ�  from crmcd where zzc>0
   insert into ��Ʒ���tt  select * ,'' as ������ from ��ʷ�ֽ��Ʒ���  where ����=@khrq and Ӫҵ������='4103'
   update ��Ʒ���tt set ������=b.������ from ��Ʒ���tt a,crmcd b where a.�ͻ�����=b.��̨�ͻ�����
end
go
drop table ttt
go
select �ͻ�����,sum(convert(money,����֤ȯ��ֵ)) as num into ttt from ��Ʒ���tt group by �ͻ�����
go
IF EXISTS(SELECT 1 FROM ��Ʒ���tt )
begin
  declare @khrq char(8)
  select @khrq=max(�ʲ�����)  from ��ʷ�ʲ��� 
  update ��ʷ�ʲ��� set ��Ʒ��ֵ=b.num from ��ʷ�ʲ��� a, ttt b where a.��̨�ͻ�����=b.�ͻ����� and �ʲ�����=@khrq
  update ��ʷ�ʲ��� set Ȩ�����ʲ�=zzc-��Ʒ��ֵ where �ʲ�����=@khrq
end
go

update crmcd set ������='����' where ��̨�ͻ����� in ('410499405473','410399120736','410499420588 ','410399116238')
go

print '---------------------------------------------'
print '*****************���ݹ鵵���*************'
print '---------------------------------------------'


truncate table ���³ɽ�cd
truncate table ����Ϣ��
truncate table �������
truncate table ���ڳɽ�
truncate table �ֽ��Ʒ���
truncate table ������
truncate table ��Ϣ��ˮtt
truncate table ����ת��tt
truncate table ����ת��tt
truncate table ������ʧ�ͻ�tt
truncate table ��Ʒ����tt
go
