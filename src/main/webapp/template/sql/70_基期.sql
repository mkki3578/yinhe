USE ydkh
GO

TRUNCATE TABLE Ӫҵ�������ͻ���
GO
INSERT INTO Ӫҵ�������ͻ���
  SELECT
    ��̨�ͻ�����, �ͻ�����,��������,������, zzc, 0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    '',
    '',    '',    '',    0, 0,	0,	'',	0
 FROM crmcd  WHERE ������ <> ''
GO

-----����14��3�����ʲ����׶�--------------------------------------------------------------------------
UPDATE Ӫҵ�������ͻ���
SET ���ʲ�     = 0, ��Ӷ14 = 0, ���ھ�Ӷ14 = 0, ����Ϣ��14 = 0, ��Ӷ13 = 0, ���ھ�Ӷ13 = 0, ����Ϣ��13 = 0, ����13 = 0, ����������13 = 0, ˮ��1�Ż���13 = 0, ˮ��2�Ż���13 = 0, ����14 = 0,
  Ȩ���Ʒ���۶�14 = 0, ���ղ�Ʒ���۶�14 = 0, �ʲ����׶�14 = 0
GO
------����14
DROP TABLE ttt
GO
SELECT  CUSTID,   SUM(CAST(FUNDEFFECT AS MONEY)) AS num  INTO ttt FROM ��Ϣ��ˮ WHERE BIZDATE > '20140101' AND BIZDATE < '20150101' GROUP BY CUSTID
GO
UPDATE Ӫҵ�������ͻ��� SET ����13 = b.num * 8.1465 FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.CUSTID
GO

--��Ӷ14
DROP TABLE ttt
GO
SELECT  FUNDID,  sum(FEE_JSXF) AS num INTO ttt FROM ��ʷ�ɽ�cd WHERE �ɽ����� > '201400' AND �ɽ����� < '201500' GROUP BY FUNDID
GO
UPDATE Ӫҵ�������ͻ��� SET ��Ӷ13 = b.num FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.FUNDID
GO

------���ھ�Ӷ14
DROP TABLE ttt
GO
SELECT �ͻ�����,sum(��������) AS ��Ӷ�� INTO ttt FROM jqrzrq WHERE �������� > '20140101' AND �������� < '20150101' GROUP BY �ͻ�����
GO
UPDATE Ӫҵ�������ͻ��� SET ���ھ�Ӷ13 = b.��Ӷ�� FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.�ͻ�����
GO

------����Ϣ��14
DROP TABLE ttt
GO
SELECT CUSTID,sum(FUNDEFFECT) AS num  INTO ttt FROM ��Ϣ�� WHERE SYSDATE > '20140101' AND SYSDATE < '20150101' GROUP BY CUSTID
GO
UPDATE Ӫҵ�������ͻ��� SET ����Ϣ��13 = num FROM Ӫҵ�������ͻ��� a, ttt b WHERE a.��̨�ͻ����� = b.CUSTID
GO

----�ֽ��Ʒ��������,ˮ��1,ˮ��2��14
DROP TABLE ttt
GO
SELECT * INTO ttt FROM ��ʷ�ֽ��Ʒ���
WHERE ���� > '20140101' AND ���� < '20150101' AND ������� IN ('������', 'AA0007', 'AA0006', 'AA0038', 'AA0042')
GO
UPDATE ttt SET ������� = ������� * 3  WHERE ������� IN ('AA0007', 'AA0006', 'AA0038', 'AA0042')
      AND ���� IN ('20140103', '20140110', '20140117', '20140124', '20140207', '20140214', '20140221', '20140228', '20140307', '20140314', '20140321', '20140328', '20140411', '20140418', '20140425', '20140509', '20140516', '20140523', '20140603', '20140606', '20140613', '20140620', '20140627', '20140704', '20140711', '20140718', '20140725', '20140801', '20140808', '20140815', '20140822', '201408029', '20140912', '20140919', '20140926', '20141010', '20141017', '20141024', '20141031', '20141107', '20141114', '20141121', '20141128', '20141205', '20141212', '20141219', '20141226')
GO
UPDATE ttt SET ������� = ������� * 7
WHERE ������� IN ('AA0007', 'AA0006', 'AA0038', 'AA0042') AND ���� IN ('20140130', '20141008', '20150105')
UPDATE ttt SET ������� = ������� * 4
WHERE ������� IN ('AA0007', 'AA0006', 'AA0038', 'AA0042') AND ���� IN ('20140404', '20140430', '20140530')
GO

ALTER TABLE ttt ADD ������ CHAR(20)
GO
UPDATE ttt SET ������ = ''
GO
UPDATE ttt SET ������ = b.������ FROM ttt a, crmcd b WHERE a.�ͻ����� = b.��̨�ͻ�����
GO
DROP TABLE tttt
GO
SELECT �ͻ�����, �������, SUM(�������) AS num INTO tttt FROM ttt GROUP BY �ͻ�����, �������
GO
UPDATE Ӫҵ�������ͻ��� SET ����������13 = num FROM Ӫҵ�������ͻ��� a, tttt b WHERE a.��̨�ͻ����� = b.�ͻ����� AND b.������� = '������'
UPDATE Ӫҵ�������ͻ��� SET ˮ��1�Ż���13 = num FROM Ӫҵ�������ͻ��� a, tttt b WHERE a.��̨�ͻ����� = b.�ͻ����� AND ������� = 'AA0007'
UPDATE Ӫҵ�������ͻ��� SET ˮ��2�Ż���13 = num FROM Ӫҵ�������ͻ��� a, tttt b WHERE a.��̨�ͻ����� = b.�ͻ����� AND ������� = 'AA0006'
GO
print '---------------------------------------------'
print '*****************���ڼ������*****************'
print '---------------------------------------------'
