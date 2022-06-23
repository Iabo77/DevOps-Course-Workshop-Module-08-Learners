FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY . .
WORKDIR /app/DotnetTemplate.Web
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \ 
	&& apt update \
	&& apt install -y nodejs
RUN npm install
WORKDIR /app/DotnetTemplate.Web
ENTRYPOINT ["dotnet", "run"]

