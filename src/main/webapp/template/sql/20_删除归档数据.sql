--�����ʷ����

print '----------��ʼɾ������-----------------'
go
if exists(select 1 from ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,1,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 ))
   delete ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,1,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 )
else if exists(select 1 from ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,2,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 ))
   delete ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,2,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 )
else if exists(select 1 from ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,3,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 ))
   delete ydkh..��ʷ�ֽ��Ʒ��� where ���� =convert(char(8),DATEADD(day,3,convert(datetime,'__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__',112)),112 )
go
delete ydkh..��ʷ�ɽ�cd where �ɽ����� ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..jqrzrq where �������� ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..��Ϣ�� where SYSDATE ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..��ʷ������ȯ���  where �������� ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'

delete ydkh..����ת�� where BIZDATE ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..����ת�� where BIZDATE ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..��Ϣ��ˮ where BIZDATE ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'
delete ydkh..��Ʒ���� where MATCHDATE ='__REPLACE_YEAR____REPLACE_MONTH____REPLACE_DAY__'

print '----------ɾ���������-----------------'