update �¶ȿ��� set ��Ч����ϵ�� = 1, �ش�����ϵ��1 = 1, �ش�����ϵ��Ȩ��1=1

--select * from sysobjects where   type ='U'

--�˶Ե�ǰ����
select count(*) from crmcd
select count(*) from ������
select count(*) from �ֽ��Ʒ���
select count(*) from ��Ʒ����tt 

select count(*) from ��Ϣ��ˮtt
select count(*) from ����ת��tt
select count(*) from ���³ɽ�cd
select count(*) from �������

select count(*) from ����Ϣ��
select count(*) from ���ڳɽ�
select count(*) from ����ת��tt
select count(*) from ���ڿ���


--select count(*) from ��Ʒ��ϸ2014
--select count(*) from ά��cdtt
--select count(*) from ��ʧ�ͻ�CRM



select count(*) from  ��Ӷ��ˮ2015

--�˶���ʷ����
select SUM(convert(money,�������)),count(*) from ��ʷ�ֽ��Ʒ��� where left(convert(char(8),convert(int,����)),6) ='201604'
select SUM(convert(money,FEE_JSXF)),count(*) from ��ʷ�ɽ�cd where left(convert(char(8),convert(int,�ɽ�����)),6) ='201604'
select SUM(convert(money,��������)),count(*) from jqrzrq where left(convert(char(8),convert(int,��������)),6) ='201604'
select SUM(convert(money,FUNDEFFECT)),count(*) from ��Ϣ�� where left(convert(char(8),convert(int,SYSDATE)),6) ='201604'
select SUM(convert(money,�ܸ�ծ)),count(*) from ��ʷ������ȯ���  where left(convert(char(8),convert(int,��������)),6) ='201604'

select count(*) from ����ת�� where left(convert(char(8),convert(int,BIZDATE)),6) ='201604'
select count(*) from ����ת�� where left(convert(char(8),convert(int,BIZDATE)),6) ='201604'
select count(*) from ��Ϣ��ˮ where left(convert(char(8),convert(int,BIZDATE)),6) ='201604'



--�˶���ʷ���ݵ���
select '��ʷ�ֽ��Ʒ���',SUM(convert(money,�������)),count(*) from ��ʷ�ֽ��Ʒ��� where ���� ='20160426'
select '��ʷ�ɽ�cd',SUM(convert(money,FEE_JSXF)),count(*) from ��ʷ�ɽ�cd where �ɽ����� ='20160425'
select 'jqrzrq',SUM(convert(money,��������)),count(*) from jqrzrq where �������� ='20160425'
select '��Ϣ��',SUM(convert(money,FUNDEFFECT)),count(*) from ��Ϣ�� where SYSDATE ='20160425'
select '��ʷ������ȯ���',SUM(convert(money,�ܸ�ծ)),count(*) from ��ʷ������ȯ���  where �������� ='20160425'

select '����ת��',count(*) from ����ת�� where BIZDATE ='20160425'
select '����ת��',count(*) from ����ת�� where BIZDATE ='20160425'
select '��Ϣ��ˮ',count(*) from ��Ϣ��ˮ where BIZDATE ='20160425'
select '��Ʒ����', COUNT(*) from ��Ʒ���� where MATCHDATE='20160425'



--�����ʷ����
delete ydkh..��ʷ�ֽ��Ʒ��� where  ���� ='20160426'
delete ydkh..��ʷ�ɽ�cd where �ɽ����� ='20160425'
delete ydkh..jqrzrq where �������� ='20160425'
delete ydkh..��Ϣ�� where SYSDATE ='20160425'
delete ��ʷ������ȯ���  where �������� ='20160425'

delete ydkh..����ת�� where BIZDATE ='20160425'
delete ydkh..����ת�� where BIZDATE ='20160425'
delete ydkh..��Ϣ��ˮ where BIZDATE ='20160425'
delete ydkh..��Ʒ���� where MATCHDATE='20160425'