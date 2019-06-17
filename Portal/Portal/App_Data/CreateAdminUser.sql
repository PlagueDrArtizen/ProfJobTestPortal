INSERT INTO AspNetUsers (Id, Email, EmailConfirmed, PasswordHash, SecurityStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled, AccessFailedCount, UserName)
VALUES ('b1056416-01bf-4028-90d9-0c7ac46230a1', 'admin@admin.com', 0, 'AK7+6B1JwyNwOQmAHqCC9jXv0KD5/mh88/2yNUhfZ6dtr4fG93kYLcOgK9FYkYtnjQ==', '0726377e-d8fe-431f-bf04-fc326e706323', NULL, 0, 0, NULL, 1, 0, 111111);

INSERT INTO AspNetRoles(Id, Name)
VALUES('2A0046F8-B6B6-4384-AA79-E22E021EBC97', 'Admin');

INSERT INTO AspNetUserRoles (UserId, RoleId)
VALUES ('b1056416-01bf-4028-90d9-0c7ac46230a1', '2A0046F8-B6B6-4384-AA79-E22E021EBC97');

INSERT INTO Employees (Name, SystemUserId)
VALUES (111111, 'b1056416-01bf-4028-90d9-0c7ac46230a1');