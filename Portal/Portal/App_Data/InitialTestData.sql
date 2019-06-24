/* ��������� ���� 1*/
INSERT INTO Tests(Name) VALUES(N'�������� ������� ��� �������� ������ �� �������� �� �� ��������� ��������');
GO

/*��������� 1 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ��������� ������ �������������� ��� ������ ��� ��������� �� ������ � ������ ��������� ������� ��� ��������� �� ��������?', 1);
GO
	
/*��������� ������ � 1 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ���������', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������� ���������, ������� ��������� �� ������ �� 50 ��', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������� ��������� � ������� �� ����� �������', 1, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������� ���������', 0, 1); 
GO

/*��������� 2 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������� ���������� ������� ������� �� ���������?', 1);
GO

/*��������� ������ � 2 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������, ����������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ������  ��������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ��������, ���������, �������������� �������� ������ ����� ��������� ������ � ��������� �����������', 1, 2);
GO

/*��������� 3 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������ ����������� ����������  � ���������� ������� ��� ������� ������� ������ �����?', 1);
GO

/*��������� ������ � 3 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 2-� ���������', 1, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 6-� ���������', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 4-� ���������', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ������ ������ �� ����� 3-� ���������', 0, 3); 
GO

/*��������� 4 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���������, ����� ������� ���������� ��������� �������������� ����� (������)?', 1);
GO

/*��������� ������ � 4 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 10 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 6 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 20 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 15 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 18 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 8 ��������� � �����', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� � ������� ������� ������ 12 ��������� � �����, � ������ ����������� � �������� ������� ������� ������ 8 ��������� � �����', 1, 4); 
GO

/*��������� 5 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����� ������� ������ ������ ���� �������� �������������� ��������� �����������?', 1);
GO

/*��������� ������ � 5 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 10��, � ����� ������������ � �������������� ������ ������ 25 ��', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 8��, � ����� ������������ � �������������� ������ ������ 20 ��', 1, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 5��, � ����� ������������ � �������������� ������ ������ 15 ��', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ��������� ������ ������ 8��, � ����� ������������ � �������������� ������ ������ 25 ��', 0, 5); 
GO

/*��������� 6 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'�����  ������� ���������������� ������� ������������ �� ������ � �������� ������������ ���������������� ������������?', 1);
GO

/*��������� ������ � 6 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������; ��������� ������������� ��������� ��������, �����������, ������������ � �.�.', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ������������� ����������� �������� ������� � ����������, ����������; ��������� ������������� ��������� ��������, �����������, ������������ � �.�.', 1, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ������������� ����; ��������� ������������� ����������� �������� ������� � ����������, ����������; ��������������; ��������� ������������� ��������� ��������, ����������� � �.�.', 0, 6); 
GO

/*��������� 7 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����� ������ ��������� �� ������ ���������� � ������?', 1);
GO

/*��������� ������ � 7 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ���������� � ������, �������������� �� �������� ����������� ������ � �����. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������, ��������������  �� ��������  ����������� ���������  ����������, ��������������  � ������ � �����', 1, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������, ��������������  �� ��������  ����������� ���������  ����������, ��������������  � ������ � �����. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� �� ������ ����������  �  ������ �� ���� �� ����� ������������� ���������������� �������� �� ���������. ����������� ������������� �� ����������� ������ ������������ ��� ������', 0, 7); 
GO

/*��������� 8 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ����� ��������������� ��������� ������ ���������� ������ � ��������� ����������������?', 1);
GO

/*��������� ������ � 8 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ��������� ������, �������������� ���������, �������� �����������', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ������������ � ����������������; ��� ����������� ������ ��������������; ��� �������, ������, ������ � ������ ������; ��� ��������� � ������ ���������; ��� ��������� �������������� �������; ��� ������������ ������, ���� � ������ �������������� ������� ������', 1, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������������� ������������ � ����������������;  ��� ������������ ������, ���� � ������ �������������� ������� ������', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� ������ ��������������', 0, 8); 
GO

/*��������� 9 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ��������� �����  �������� ���������� ��������� ����� � ����������, ���������� ��������������� ��� �������������������?', 1);
GO

/*��������� ������ � 9 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ����� � ������', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 1, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 9); 
GO

/*��������� 10 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ��������� �����  �������� ���������� ��������� �������� ��������������?', 1);
GO

/*��������� ������ � 10 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������ � ������', 1, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ������', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ����� � ������', 0, 10); 
GO

/*��������� 11 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ������ ������ ���� ����� (�������, ������), � ������� ������������ ���������, ��������� � ������� ����� ������� � ������� ����?', 1);
GO

/*��������� ������ � 11 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 2 � �� ������ ����', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 0,5 � �� ������ ����', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 1,7 � �� ������ ����', 1, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� 0,7 � �� ������ ����', 0, 11); 
GO

/*��������� 12 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� �� �������������, � ������� ����� �� ����� ������?', 1);
GO

/*��������� ������ � 12 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������', 1, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�����', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� ������', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ���������� ������', 0, 12); 
GO

/*��������� 13 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ��� �������� ������ ���������� ��������� ������ ������������?', 1);
GO

/*��������� ������ � 13 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ����� ��������, ���������� ����� � �������� �����', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ���������� ������ ������� ������������', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� ��������� ��������� ������ ��������', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���� �������������', 1, 13); 
GO

/*��������� 14 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ������� ���� ��������� ������� �� ������?', 1);
GO

/*��������� ������ � 14 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������  ������� ��� ������ �����, ��������� ���������. �������� �������������  ��� �������� ������� ����������� �������', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ������� ������������ (��������������, ������� �������������)', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ��������������� ������ � ������������ �� �������, ������������ ��� ����� ������������ �������� � �������-��������. �� ��������� �������� � ������ � ������ �� ����� ��� ������', 1, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �� ������ ������� �������-��������', 0, 14); 
GO

/*��������� 15 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���� �� ������ ������������� ������� ������?', 1);
GO

/*��������� ������ � 15 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���������� ��������� ������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ������� ������ � ����������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� ����������� ��������', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ���������� ���������� ������', 1, 15); 
GO

/*��������� 16 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ��������������� ����� �������� �� ������������ ���������� �� ������ �����?', 1);
GO

/*��������� ������ � 16 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������������� ��������������� �� �������������', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������������', 1, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ���������������� ', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������� ���������������� ���������', 0, 16); 
GO

/*��������� 17 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ������ ��������� ��������� ����� ������� �����?', 1);
GO

/*��������� ������ � 17 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������� ��������', 1, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ����������', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� � ����������� ����������������� ��������� ��� ������ �� ������� � ����������� ��������', 0, 17); 
GO

/*��������� 18 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� �������� ������ �������  ����� ������� �����?', 1);
GO

/*��������� ������ � 18 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� � �������� ������ � ������� ������� ���������� �������������', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� � ������� � ������ ���, ��������� ������� �����, ������ ����������� ��������, ��������� ����������� �����������', 1, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������  � ������ ������ ����� ������ � ������� ����������� ', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� ������������ ������������ �������������', 0, 18); 
GO

/*��������� 19 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� �������� ���������, ����������� ������ �� ������������?', 1);
GO

/*��������� ������ � 19 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� ������ ����� � ��� ������ ������������ ��������� �����', 0, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� � ����������� �����������', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������ �������� ������� � � ������ ������ �����', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ������� ������ ����� ����������� ������', 0, 19); 
GO

/*��������� 20 ������ � ���� 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ���� ������ ������� ������ ����������?', 1);
GO

/*��������� ������ � 20 ������� � ���� 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ������ ����������, ���� ��������� �������� ���������� �� ������', 1, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� �� ������ ������������', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������������  ������ ���������� �� ������������', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� �������', 0, 20); 
GO

/* ��������� ���� 2*/
INSERT INTO Tests(Name) VALUES(N'����� �� ������� ������������ �� �����������');
GO

/*��������� 1 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'�� ������� � ���������� ���������� ��������� �������� �������� � �������� ������ �� �������� ������ �����:', 2);
GO
	
/*��������� ������ � 1 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� ������ ���������� ����������� ������������ � � ���������� ���� ��� � ���.', 1, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������ ��� � 3 ����.', 0, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������ ��� � 5 ���.', 0, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� �������� �������������.', 0, 21); 
GO

/*��������� 2 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'������� ���������� �� ������ ����� � ����� ��������� ����������� ��������:', 2);
GO

/*��������� ������ � 2 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������� �� ������ �����.', 1, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��������� ������ ������.', 0, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������������� ������������.', 0, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������ ��������.', 0, 22);
GO

/*��������� 3 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��������� ���������� �� ������ ����� �� ������� ��� ���������� ��������� ���������� ���� ���:', 2);
GO

/*��������� ������ � 3 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ���������.', 1, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� �����.', 0, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� �������.', 0, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� �������� ���������������� ����������.', 0, 23); 
GO

/*��������� 4 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'����� ���������� ������� ���������� �� ������ �����?', 2);
GO

/*��������� ������ � 4 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ��������� ���������� ��� ����� ����������� ������.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� ������ �� ��������.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� �������� ��������� �� ������ ���� � ������.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'��� ����������� �� ���������� ������� ��� ��������� ������', 1, 24); 
GO

/*��������� 5 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ����� �������� ����������� ����������� �� ������ �����?', 2);
GO

/*��������� ������ � 5 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������ �����������.', 1, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� �������.', 0, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���.', 0, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�����������.', 0, 25); 
GO

/*��������� 6 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� �������������� ������������� ���������� ������� �� ������������?', 2);
GO

/*��������� ������ � 6 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'���������, ����������� ������������� �����������.', 1, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ������ �����.', 0, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����������� ���������.', 0, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� ���������� ���.', 0, 26); 
GO

/*��������� 7 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'������������ ���������� ������, � ������� ������������ ������������ �� �������?', 2);
GO

/*��������� ������ � 7 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ������ ������ ������������.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������, ���� � ������� ������������ ������ �� ����� ������ ������.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� ������������.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������������ �� ��������� ������������.', 1, 27); 
GO

/*��������� 8 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����� ������� ����������� ������ ����� � ������ ������������ ������� �������� ������������� ����������� ������?', 2);
GO

/*��������� ������ � 8 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� 5-������� �������.', 0, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� 10-������� �������.', 1, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� 20-������� �������.', 0, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� 15-������� �������.', 0, 28); 
GO

/*��������� 9 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'��� ������������ (�������������) ����� ���������� �� �������� ���������� �����������, �������������� ������, ����������� ������� ����?', 2);
GO

/*��������� ������ � 9 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'����� ������ �����.', 0, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������� �����������.', 0, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������� �� ���������� ������� ����.', 1, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'������ ���������.', 0, 29); 
GO

/*��������� 10 ������ � ���� 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'� ����������� ���� ����, ����������� ����� ���� ��������, ��������� ��������:', 2);
GO

/*��������� ������ � 10 ������� � ���� 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'� ����������� �� ��������', 0, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�������������', 1, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�����������.', 0, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'�� ����������.', 0, 30); 
GO