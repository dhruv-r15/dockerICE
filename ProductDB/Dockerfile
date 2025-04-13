FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express
ENV MSSQL_SA_PASSWORD=Password1!

# Create a directory for the initialization script
WORKDIR /usr/src/app

# Copy the initialization script
COPY init-database.sql /usr/src/app/

# Grant permissions to the script
USER root
RUN chmod +x /usr/src/app/init-database.sql
USER mssql