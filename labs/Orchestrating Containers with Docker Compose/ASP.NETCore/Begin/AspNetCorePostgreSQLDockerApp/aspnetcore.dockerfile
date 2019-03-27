FROM microsoft/dotnet:sdk
LABEL author="Andrew Qin"
ENV ASPNETCORE_URLS=http://*:5000
WORKDIR /var/www/aspnetcoreapp
COPY . .
EXPOSE 5000

ENTRYPOINT ["/bin/bash", "-c", "dotnet restore && dotnet run"]