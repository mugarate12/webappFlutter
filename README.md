# Instalações

- flutter deve estar pelo menos na versão 1.5.4: rode o comando "flutter upgrade"
- instalar o pacote "web dev" do flutter: rode o comando "flutter pub global activate webdev"

# Execução
- atualize os pacotes do repositorio: rode o comando "flutter pub upgrade"
- rode o comando "webdev serve --auto restart" caso o webdev esteja configurado no path do windows(ou de acordo com seu SO), caso não, pode rodar o comando "flutter pub global run webdev serve --auto restart" que deve funcionar sem problemas
- estará rodando na porta 8080, acessar em "http://localhost:8080"
