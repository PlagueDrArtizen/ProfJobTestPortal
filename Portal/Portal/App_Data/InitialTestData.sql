/* ��������� ����� ���� */
INSERT INTO Tests(Name) VALUES(N'�������� ������� ��� �������� ������ �� �������� �� �� ��������� ��������');
GO

/*��������� 1 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ��������� ������ �������������� ��� ������ ��� ��������� �� ������ � ������ ��������� ������� ��� ��������� �� ��������?', 1);
GO
	
/*��������� ������ � 1 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ���������', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������� ���������, ������� ��������� �� ������ �� 50 ��', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������� ��������� � ������� �� ����� �������', 1, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������� ���������', 0, 1); 
GO

/*��������� 2 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������� ���������� ������� ������� �� ���������?', 1);
GO

/*��������� ������ � 2 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������, ����������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ������  ��������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ��������, ���������, �������������� �������� ������ ����� ��������� ������ � ��������� �����������', 1, 2);
GO

/*��������� 3 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������ ����������� ����������  � ���������� ������� ��� ������� ������� ������ �����?', 1);
GO

/*��������� ������ � 3 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 2-� ���������', 1, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 6-� ���������', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 4-� ���������', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 3-� ���������', 0, 3); 
GO

/*��������� 4 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���������, ����� ������� ���������� ��������� �������������� ����� (������)?', 1);
GO

/*��������� ������ � 4 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 10 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 6 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 20 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 15 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 18 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 8 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 12 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 8 ��������� � �����', 1, 4); 
GO

/*��������� 5 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����� ������� ������ ������ ���� �������� �������������� ��������� �����������?', 1);
GO

/*��������� ������ � 5 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 10��, � ����� ������������ � �������������� ������ ������ 25 ��', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 8��, � ����� ������������ � �������������� ������ ������ 20 ��', 1, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 5��, � ����� ������������ � �������������� ������ ������ 15 ��', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 8��, � ����� ������������ � �������������� ������ ������ 25 ��', 0, 5); 
GO

/*��������� 6 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'�����  ������� ���������������� ������� ������������ �� ������ � �������� ������������ ���������������� ������������?', 1);
GO

/*��������� ������ � 6 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������; ��������� ������������� ��������� ��������, �����������, ������������ � �.�.', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ������������� ����������� �������� ������� � ����������, ����������; ��������� ������������� ��������� ��������, �����������, ������������ � �.�.', 1, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������; ��������������; ��������� ������������� ��������� ��������, ����������� � �.�.', 0, 6); 
GO

/*��������� 7 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����� ������ ��������� �� ������ ���������� � ������?', 1);
GO

/*��������� ������ � 7 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ���������� � ������, �������������� �� �������� ����������� ������ � �����. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������, ��������������  �� ��������  ����������� ���������  ����������, ��������������  � ������ � �����', 1, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������, ��������������  �� ��������  ����������� ���������  ����������, ��������������  � ������ � �����. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������ �� ���� �� ����� ������������� ���������������� �������� �� ���������. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7); 
GO

/*��������� 8 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ����� ��������������� ��������� ������ ���������� ������ � ��������� ����������������?', 1);
GO

/*��������� ������ � 8 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ��������� ������, �������������� ���������, �������� �����������', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ������������ � ����������������; ��� ����������� ������ ��������������; ��� �������, ������, ������ � ������ ������; ��� ��������� � ������ ���������; ��� ��������� �������������� �������; ��� ������������ ������, ���� � ������ �������������� ������� ������', 1, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ������������ � ����������������;  ��� ������������ ������, ���� � ������ �������������� ������� ������', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� ������ ��������������', 0, 8); 
GO

/*��������� 9 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ��������� �����  �������� ���������� ��������� ����� � ����������, ���������� ��������������� ��� �������������������?', 1);
GO

/*��������� ������ � 9 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ����� � ������', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 1, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 9); 
GO

/*��������� 10 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ��������� �����  �������� ���������� ��������� �������� ��������������?', 1);
GO

/*��������� ������ � 10 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������ � ������', 1, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ����� � ������', 0, 10); 
GO

/*��������� 11 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������ ������ ���� ����� (�������, ������), � ������� ������������ ���������, ��������� � ������� ����� ������� � ������� ����?', 1);
GO

/*��������� ������ � 11 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 2 � �� ������ ����', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 0,5 � �� ������ ����', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 1,7 � �� ������ ����', 1, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 0,7 � �� ������ ����', 0, 11); 
GO

/*��������� 12 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� �� �������������, � ������� ����� �� ����� ������?', 1);
GO

/*��������� ������ � 12 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������', 1, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�����', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� ������', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ���������� ������', 0, 12); 
GO

/*��������� 13 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ��� �������� ������ ���������� ��������� ������ ������������?', 1);
GO

/*��������� ������ � 13 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ����� ��������, ���������� ����� � �������� �����', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ���������� ������ ������� ������������', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� ��������� ��������� ������ ��������', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���� �������������', 1, 13); 
GO

/*��������� 14 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ������� ���� ��������� ������� �� ������?', 1);
GO

/*��������� ������ � 14 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������  ������� ��� ������ �����, ��������� ���������. �������� �������������  ��� �������� ������� ����������� �������', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ������� ������������ (��������������, ������� �������������)', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ��������������� ������ � ������������ �� �������, ������������ ��� ����� ������������ �������� � �������-��������. �� ��������� �������� � ������ � ������ �� ����� ��� ������', 1, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ������� �������-��������', 0, 14); 
GO

/*��������� 15 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���� �� ������ ������������� ������� ������?', 1);
GO

/*��������� ������ � 15 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���������� ��������� ������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ������� ������ � ����������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� ����������� ��������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���������� ���������� ������', 1, 15); 
GO

/*��������� 16 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ��������������� ����� �������� �� ������������ ���������� �� ������ �����?', 1);
GO

/*��������� ������ � 16 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������������� ��������������� �� �������������', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������������', 1, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ���������������� ', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ���������������� ���������', 0, 16); 
GO

/*��������� 17 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ������ ��������� ��������� ����� ������� �����?', 1);
GO

/*��������� ������ � 17 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������� ��������', 1, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ����������', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������������� ��������� ��� ������ �� ������� � ����������� ��������', 0, 17); 
GO

/*��������� 18 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� �������� ������ �������  ����� ������� �����?', 1);
GO

/*��������� ������ � 18 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� � �������� ������ � ������� ������� ���������� �������������', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� � ������� � ������ ���, ��������� ������� �����, ������ ����������� ��������, ��������� ����������� �����������', 1, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������  � ������ ������ ����� ������ � ������� ����������� ', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� ������������ ������������ �������������', 0, 18); 
GO

/*��������� 19 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� �������� ���������, ����������� ������ �� ������������?', 1);
GO

/*��������� ������ � 19 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� ������ ����� � ��� ������ ������������ ��������� �����', 0, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� � ����������� �����������', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������ �������� ������� � � ������ ������ �����', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ������� ������ ����� ����������� ������', 0, 19); 
GO

/*��������� 20 ������*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���� ������ ������� ������ ����������?', 1);
GO

/*��������� ������ � 20 �������*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ������ ����������, ���� ��������� �������� ���������� �� ������', 1, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� �� ������ ������������', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������������  ������ ���������� �� ������������', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� �������', 0, 20); 
GO
