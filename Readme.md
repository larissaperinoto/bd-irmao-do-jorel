# Normalizando o banco de dados IrmaoDoJorel

Este repositório guarda as informações da monitoria estruturada onde foi normalizado o banco de dados IrmaoDoJorel.

## Exercício

Para realizar o exercício de normalização, utilize as tabelas continas nessa [planilha Excel](https://docs.google.com/spreadsheets/d/1ksGbvhqUaHpvy4CSc-ODec-d5dNL-4hhWJodCNy0KJ0/edit?usp=sharing).

Faça a normalização dos dados seguindos as formas normais descritas abaixo. Crie um esboço de como seriam estruturadas as entidades do banco de dados e os atributos pertencentes a cada uma delas.

![Captura de tela de 2022-10-25 13-05-06](https://user-images.githubusercontent.com/98956659/197827230-bd7de8e6-ea84-4f01-9856-f58068d95ea6.png)

Utilizando uma ferramenta para a criação de diagrama entidade-relacionamento, faça o esboço das entidades e os relacionamentos entre elas.

O diagrama abaixo foi elaborado usando a ferramenta [Workbench](https://www.mysql.com/products/workbench/).

![Captura de tela de 2022-10-25 13-21-56](https://user-images.githubusercontent.com/98956659/197829809-87c6318d-8bd3-4262-81ea-47d09a87f897.png)

Com os dados normalizado, crie o script SQL para gerar o banco.

## Executando o Script

Para gerar o banco de dados _IrmaoDoJorel_ basta apenas copiar e executar o script **irmaoDoJorel.sql** contido neste repositório.

Caso não possua o MySQL localmente, utilize o Docker.

### Como executar o MySQL pelo Docker
<details>
  
  #### 1) Diretamente pelo terminal
  
  Com o Docker instalado, pode-se subir um container MySQL rapidamente pela linha de comando abaixo
  
       docker run -it --rm -e MYSQL_ROOT_PASSWORD=root -p33060:3306 --name mysql_container mysql
  
  Acessando o terminal do container com o comando abaixo.
  
      docker exec -it mysql_container bash
  
  Uma vez no terminal do container, faça login diretamente no terminal com as credenciais MySQL, onde a senha é **root**.
  
      mysql -u root -p 
  
  Caso prefira, faça o login com as mesmas credenciais descritas acima usando a interface do [Workbench](https://www.mysql.com/products/workbench/)
  
  #### 2) Usando o docker-compose.yml
  
  Utilizando o docker-compose.yml presente neste repositório, rode o comando abaixo.
  
      docker-compose up
  
  Acessando o terminal do container com o comando abaixo.
  
      docker exec -it mysql_container bash
  
  Uma vez no terminal do container, faça login diretamente no terminal com as credenciais MySQL, onde a senha é **root**.
  
      mysql -u root -p 
  
  Caso prefira, faça o login com as mesmas credenciais descritas acima usando a interface do [Workbench](https://www.mysql.com/products/workbench/)
  
</details>
 ---
 
Desenvolvido por [Larissa Perinoto](www.linkedin.com/in/larissaperinoto), © 2022.
