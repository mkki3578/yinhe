use ydkh
go

if exists(select 1 from sysobjects where xtype='U' and name= '�¶ȿ���'+ '__REPLACE_YEAR____REPLACE_MONTH__' )
  begin
   
    if exists(select 1 from sysobjects where xtype='U' and name= '�¶ȿ���')
       drop table �¶ȿ���
    if exists(select 1 from sysobjects where xtype='U' and name= 'crmcd')
       drop table crmcd
    if exists(select 1 from sysobjects where xtype='U' and name= '���ֲ�����')
       drop table ���ֲ�����

    declare @runsql nvarchar(300) 
    select @runsql = ' if exists(select 1 from sysobjects where xtype=''U'' and name=''' + '�¶ȿ���'+ '__REPLACE_YEAR____REPLACE_MONTH__' + ''') ' + char(13) + char(10)
                   +  '  select * into �¶ȿ���'  + ' from �¶ȿ���'+ '__REPLACE_YEAR____REPLACE_MONTH__'
    --select @runsql
    exec sp_executesql @runsql
    select @runsql = ' if exists(select 1 from sysobjects where xtype=''U'' and name=''' + 'crmcd'+ '__REPLACE_YEAR____REPLACE_MONTH__' + ''') ' + char(13) + char(10)
          + '    select * into crmcd'  + ' from crmcd'+ '__REPLACE_YEAR____REPLACE_MONTH__'
    --select @runsql
    exec sp_executesql @runsql
    select @runsql =   ' if exists(select 1 from sysobjects where xtype=''U'' and name=''' + '���ֲ�����'+ '__REPLACE_YEAR____REPLACE_MONTH__'+ ''') ' + char(13) + char(10)
              +  ' select * into ���ֲ�����'  + ' from ���ֲ�����'+ '__REPLACE_YEAR____REPLACE_MONTH__'
    --select @runsql
    exec sp_executesql @runsql

   print '�¶ȿ��������Ѿ��ָ�Ϊ'+'__REPLACE_YEAR____REPLACE_MONTH__'+'���ݡ�'
  end
else 
   print  '__REPLACE_YEAR____REPLACE_MONTH__'+'�¶ȿ������ݲ�����'
go
