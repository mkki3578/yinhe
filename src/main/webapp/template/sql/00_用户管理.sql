USE ydkh
GO

DELETE FROM ��Ʋ���Ա�� WHERE ��ɫ = '����Ա'
GO

ALTER TABLE ��Ʋ���Ա�� ADD �浵Ȩ�� BIT DEFAULT 0
ALTER TABLE ��Ʋ���Ա�� ADD ��½�� NVARCHAR(32)
ALTER TABLE ��Ʋ���Ա�� ADD ���� NVARCHAR(128)
GO
UPDATE ��Ʋ���Ա�� SET �浵Ȩ�� = 0, ��½�� = '', ���� = ''
GO
UPDATE ��Ʋ���Ա�� SET �浵Ȩ�� = b.�浵Ȩ��, ��½�� = b.��½��, ���� = b.���� FROM ��Ʋ���Ա�� a, �û��� b WHERE a.Ӫҵ�� = b.Ӫҵ�� AND a.���� = b.���� AND a.���� = b.����
GO
INSERT INTO ��Ʋ���Ա�� SELECT * FROM �û��� WHERE ��ɫ = '����Ա'
GO
DROP TABLE �û���
GO
SELECT * INTO �û��� FROM ��Ʋ���Ա�� ORDER BY CONVERT(INT, ���)
GO
-------------------------------------------------------------------------
IF EXISTS(SELECT *  FROM sysobjects WHERE name = '�¶ȿ���tt')
  DROP TABLE �¶ȿ���tt
GO
SELECT * INTO �¶ȿ���tt FROM �¶ȿ���
GO
-------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE name = '�¶ȿ���')
  DROP TABLE �¶ȿ���
GO
SELECT  Ӫҵ��, ����, ���� INTO �¶ȿ��� FROM �û��� WHERE ��ɫ <> '����Ա'
GO

ALTER TABLE �¶ȿ��� ADD �ͻ��� MONEY
ALTER TABLE �¶ȿ��� ADD ���ʲ� MONEY

ALTER TABLE �¶ȿ��� ADD Ȩ���Ʒ MONEY
ALTER TABLE �¶ȿ��� ADD Ȩ���Ʒ���� MONEY
ALTER TABLE �¶ȿ��� ADD �̶���Ʒ MONEY
ALTER TABLE �¶ȿ��� ADD �̶���Ʒ���� MONEY
ALTER TABLE �¶ȿ��� ADD ��Ʒ�ܷ� MONEY

ALTER TABLE �¶ȿ��� ADD �����̶���Ʒ MONEY
ALTER TABLE �¶ȿ��� ADD �����̶���Ʒ���� MONEY

ALTER TABLE �¶ȿ��� ADD �¿��� MONEY
ALTER TABLE �¶ȿ��� ADD �¿������� MONEY
ALTER TABLE �¶ȿ��� ADD �¿���1w MONEY
ALTER TABLE �¶ȿ��� ADD �¿���1w���� MONEY
ALTER TABLE �¶ȿ��� ADD �¿���10w MONEY
ALTER TABLE �¶ȿ��� ADD �¿���10w���� MONEY
ALTER TABLE �¶ȿ��� ADD �¿���50w MONEY
ALTER TABLE �¶ȿ��� ADD �¿���50w���� MONEY
ALTER TABLE �¶ȿ��� ADD �����ʲ� MONEY
ALTER TABLE �¶ȿ��� ADD �����ʲ����� MONEY
ALTER TABLE �¶ȿ��� ADD �¿����ܷ� MONEY

ALTER TABLE �¶ȿ��� ADD ���ڿ��� MONEY
ALTER TABLE �¶ȿ��� ADD ���ڿ������� MONEY
ALTER TABLE �¶ȿ��� ADD ����ĩ��� MONEY
ALTER TABLE �¶ȿ��� ADD ����ĩ�����ռ�� MONEY
ALTER TABLE �¶ȿ��� ADD ����ĩ��� MONEY
ALTER TABLE �¶ȿ��� ADD ����ĩ�����ռ�� MONEY

ALTER TABLE �¶ȿ��� ADD �����ռ�ʲ�� MONEY
ALTER TABLE �¶ȿ��� ADD �����ռ�ʲ��÷� MONEY
ALTER TABLE �¶ȿ��� ADD �����ܷ� MONEY

ALTER TABLE �¶ȿ��� ADD �������� MONEY
ALTER TABLE �¶ȿ��� ADD ������������ MONEY
ALTER TABLE �¶ȿ��� ADD �����ʲ� MONEY
ALTER TABLE �¶ȿ��� ADD �����ʲ����� MONEY

ALTER TABLE �¶ȿ��� ADD ��ʧ�ͻ��� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ͻ������� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ʲ� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ʲ����� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ��Ӷ�� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ��Ӷ����� MONEY
ALTER TABLE �¶ȿ��� ADD ������ʧ�ʲ� MONEY
ALTER TABLE �¶ȿ��� ADD ������ʧ�ʲ����� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ܷ� MONEY

ALTER TABLE �¶ȿ��� ADD ��Ӷ�ͻ� MONEY
ALTER TABLE �¶ȿ��� ADD ��Ӷ�ͻ����� MONEY
ALTER TABLE �¶ȿ��� ADD ��Ӷ��ʧ MONEY

ALTER TABLE �¶ȿ��� ADD �¶Ȼ����ܷ� MONEY
ALTER TABLE �¶ȿ��� ADD ���ֺϸ��� MONEY
ALTER TABLE �¶ȿ��� ADD ��������� MONEY
ALTER TABLE �¶ȿ��� ADD ��Ӧ��ɱ��� MONEY


ALTER TABLE �¶ȿ��� ADD ��ʧӶ������ MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ʲ����� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧӶ����� MONEY
ALTER TABLE �¶ȿ��� ADD ��ʧ�ʲ����� MONEY

ALTER TABLE �¶ȿ��� ADD ���� MONEY
ALTER TABLE �¶ȿ��� ADD Ϣ�� MONEY
ALTER TABLE �¶ȿ��� ADD ��Ӷ MONEY
ALTER TABLE �¶ȿ��� ADD ���ھ�Ӷ MONEY
ALTER TABLE �¶ȿ��� ADD ������ MONEY
ALTER TABLE �¶ȿ��� ADD ˮ��1 MONEY
ALTER TABLE �¶ȿ��� ADD ˮ��2 MONEY
ALTER TABLE �¶ȿ��� ADD ��Ʒ�������� MONEY
ALTER TABLE �¶ȿ��� ADD ˮ��3 MONEY
ALTER TABLE �¶ȿ��� ADD ˮ��5 MONEY
ALTER TABLE �¶ȿ��� ADD ����ϼ� MONEY
ALTER TABLE �¶ȿ��� ADD ����ɻ��� MONEY
ALTER TABLE �¶ȿ��� ADD ��ɻ��� MONEY
ALTER TABLE �¶ȿ��� ADD ���ͻ� MONEY
ALTER TABLE �¶ȿ��� ADD �ʲ����׶� MONEY
ALTER TABLE �¶ȿ��� ADD �����г����� MONEY
ALTER TABLE �¶ȿ��� ADD ����Ŀ�괴�ն� MONEY
ALTER TABLE �¶ȿ��� ADD ������ռ��ֵ MONEY
ALTER TABLE �¶ȿ��� ADD ������ռ�� MONEY
ALTER TABLE �¶ȿ��� ADD ����ϵ�� MONEY

ALTER TABLE �¶ȿ��� ADD ��Ч����ϵ�� MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��1 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��2 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��3 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��4 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��5 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��Ȩ��1 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��Ȩ��2 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��Ȩ��3 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��Ȩ��4 MONEY
ALTER TABLE �¶ȿ��� ADD �ش�����ϵ��Ȩ��5 MONEY

ALTER TABLE �¶ȿ��� ADD ���񽱽����ֵ MONEY
ALTER TABLE �¶ȿ��� ADD ���񽱽�Ԥ����ֵ MONEY
ALTER TABLE �¶ȿ��� ADD ���ŵ����� MONEY
ALTER TABLE �¶ȿ��� ADD ���񽱽𷢷�ֵ MONEY
ALTER TABLE �¶ȿ��� ADD ���ŵ�����ע varchar(500)

ALTER TABLE �¶ȿ��� ADD ��Ӷ13 MONEY
ALTER TABLE �¶ȿ��� ADD ���ھ�Ӷ13 MONEY
ALTER TABLE �¶ȿ��� ADD ����13 MONEY
ALTER TABLE �¶ȿ��� ADD Ϣ��13 MONEY
ALTER TABLE �¶ȿ��� ADD ������13 MONEY
ALTER TABLE �¶ȿ��� ADD ˮ��һ13 MONEY
ALTER TABLE �¶ȿ��� ADD ˮ�Ƕ�13 MONEY
ALTER TABLE �¶ȿ��� ADD ȫ�г�����13 MONEY
ALTER TABLE �¶ȿ��� ADD ������ռ��13 MONEY

ALTER TABLE �¶ȿ��� ADD �Ϲ� MONEY
ALTER TABLE �¶ȿ��� ADD �������� MONEY
GO

UPDATE �¶ȿ��� SET ��������  = b.��������, �Ϲ� = b.�Ϲ�, ��Ч����ϵ�� = b.��Ч����ϵ��, �ش�����ϵ��1 = b.�ش�����ϵ��1, �ش�����ϵ��2 = b.�ش�����ϵ��2, 
                               �ش�����ϵ��3 = b.�ش�����ϵ��3,  �ش�����ϵ��4 = b.�ش�����ϵ��4, �ش�����ϵ��5 = b.�ش�����ϵ��5,
                               �ش�����ϵ��Ȩ��1 = b.�ش�����ϵ��Ȩ��1, �ش�����ϵ��Ȩ��2 = b.�ش�����ϵ��Ȩ��2, 
                               �ش�����ϵ��Ȩ��3 = b.�ش�����ϵ��Ȩ��3,  �ش�����ϵ��Ȩ��4 = b.�ش�����ϵ��Ȩ��4, �ش�����ϵ��Ȩ��5 = b.�ش�����ϵ��Ȩ��5 
FROM �¶ȿ��� a, �¶ȿ���tt b WHERE a.���� = b.����
GO