package Model;

import java.sql.Connection;

import java.sql.DriverManager;

public class Conexao {
     //Nome do usuário do mysql
    private static final String USERNAME = "root";

    //Senha do mysql
    private static final String PASSWORD = "Flamenguista23";

    //Dados de caminho, porta e nome da base de dados que irá ser feita a conexão
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/agencia_novosares1";

  public static Connection createConnectionToMySQL() throws Exception{

     Class.forName("com.mysql.cj.jdbc.Driver"); //Faz com que a classe seja carregada pela JVM

     //Cria a conexão com o banco de dados
     Connection connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

     return connection;

  }

}

