--Switch to master Database once logged in with ADMIN account (You can use SSMS/DBeaver/VS Code/ or any other IDE of your choice)
--Create a Login account
CREATE LOGIN fall2025
 WITH PASSWORD = 'DemoSessions2025#' 
GO

--Switch to your database
CREATE USER fall2025
    FROM LOGIN fall2025
GO


ALTER ROLE db_owner 
    ADD MEMBER fall2025
GO