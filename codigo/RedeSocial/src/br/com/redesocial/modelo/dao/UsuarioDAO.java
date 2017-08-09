package br.com.redesocial.modelo.dao;

import br.com.redesocial.modelo.dto.Usuario;
import br.com.redesocial.modelo.dto.enumeracoes.Sexo;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 * Objeto de acesso aos dados dos usuários
 * @author Ronneesley Moura Teles
 * @since 27/07/2017
 */
public class UsuarioDAO extends DAOCRUDBase<Usuario> {
    /**
     * Inseri um objeto no banco de dados na tabela usuários
     * @param dto objeto com os dados de usuário já preenchido
     * @throws Exception 
     */
    @Override
    public void inserir(Usuario dto) throws Exception {
        Connection conexao = getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement("insert into usuarios(nome, email, senha) values(?, ?, ?)");
        
        pstmt.setString(1, dto.getNome());
        pstmt.setString(2, dto.getEmail());
        pstmt.setString(3, dto.getSenha());
        
        pstmt.executeUpdate();
    }
    
    @Override
    public Usuario selecionar(int id) throws Exception {
        Connection conexao = getConexao();

        PreparedStatement  pstmt; 
        pstmt = conexao.prepareStatement("select * from usuarios where id = ?");
        pstmt.setInt(1, id);

        ResultSet rs;
        rs = pstmt.executeQuery();

        MultimidiaDAO multimidiaDAO = new MultimidiaDAO();
        CidadeDAO cidadeDAO = new CidadeDAO();
        if (rs.next()){
            Usuario u = new Usuario();
            u.setId(rs.getInt("id"));
            u.setNome(rs.getString("nome"));
            u.setEmail(rs.getString("email"));
            u.setTelefone(rs.getString("telefone"));
            u.setSenha(rs.getString("senha"));
            u.setNascimento(rs.getDate("data"));            
            u.setSexo(Sexo.getSexo(rs.getString("sexo").charAt(0)));
            u.setDataCadastro(rs.getDate("data_cadastro"));
            u.setStatus(rs.getBoolean("status"));
            u.setFoto(multimidiaDAO.selecionar(rs.getInt("foto")));
            u.setCidade(cidadeDAO.selecionar(rs.getInt("cidade")));

            return u;
        }else{
            return null;
        }
    }    

    @Override
    public void alterar (Usuario  u) throws Exception {
        Connection conexao = getConexao();

        PreparedStatement  pstmt; 
        pstmt = conexao.prepareStatement("update usuario set id = ?, nome = ?, email=?, telefone=? senha =?, nascimento =?, sexo = ?, data_cadastro =?, status =?, foto=?, cidade=?");
        
        ResultSet rs;
        rs = pstmt.executeQuery();
       
        MultimidiaDAO multimidiaDAO = new MultimidiaDAO();
        CidadeDAO cidadeDAO = new CidadeDAO();
        
        
        pstmt.setInt(1, u.getId());
        pstmt.setString(2, u.getNome());
        pstmt.setString(3, u.getEmail());
        pstmt.setString(4, u.getTelefone());
        pstmt.setString(5, u.getSenha());  
        pstmt.setDate  (6, (Date) u.getNascimento());
        u.setSexo(Sexo.getSexo(rs.getString("sexo").charAt(0)));
        pstmt.setDate  (8, (Date) u.getDataCadastro());
        pstmt.setBoolean(9, u.getStatus());
        u.setFoto(multimidiaDAO.alterar(rs.getInt("foto")));
        u.setCidade(cidadeDAO.alterar(rs.getInt("cidade")));

        pstmt.executeUpdate();
      
    
    }

    @Override
    public List listar() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //Apague a linha e escreva o código
    }

    @Override
    public void excluir(int id) throws Exception {
        
    }
}