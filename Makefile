infra:
	docker pull mcr.microsoft.com/mssql/server:2019-latest
	docker stop sql1 || true
	docker rm sql1 || true
	docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=sqlServerteSte123#" -p 1433:1433 --name sql1 -d mcr.microsoft.com/mssql/server:2019-latest
