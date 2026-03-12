-- Created by GitHub Copilot in SSMS - review carefully before executing
CREATE TABLE dbo.Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,                                 -- Surrogate PK
    EmployeeNumber AS ('EMP' + RIGHT('00000' + CONVERT(VARCHAR(5), EmployeeID), 5)) PERSISTED, -- Human-friendly computed ID
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(256) NOT NULL UNIQUE,
    Phone NVARCHAR(20) NULL,
    JobTitle NVARCHAR(100) NULL,
    Department NVARCHAR(100) NULL,
    ManagerEmployeeID INT NULL,                                                -- Optional self-reference (add FK later if desired)
    HireDate DATE NOT NULL DEFAULT (CONVERT(date, GETDATE())),
    Salary DECIMAL(18,2) NOT NULL CONSTRAINT CK_Employees_Salary_NonNegative CHECK (Salary >= 0), -- salary must be non-negative
    IsActive BIT NOT NULL DEFAULT (1),
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

