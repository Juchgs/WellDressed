
import hibernatePersistent.fashionista.FashionistaDAO;
import Hibernate.HibernateUtil;
import hibernatePersistent.fashionista.Fashionista;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;

public class teste {

    public static void main(String args[]) {
        
        // System.out.println("Ok,teste");
        //Session sessao = HibernateUtil.abrirSessaoComBD();
        // List fashionistas = sessao.createCriteria(Fashionista.class).list();
        FashionistaDAO listar = new FashionistaDAO();

        List<Fashionista> fashionistas = listar.listFashionista();

        for (Fashionista fashionista : fashionistas) {
            System.out.println("Nome: " + fashionista.getNome());
            System.out.println("Sobrenome: " + fashionista.getSobrenome());
            System.out.println("Bairro: " + fashionista.getBairro());
        }
        Fashionista fashionista = new Fashionista();

        fashionista.setNome("Joãozinho");
        fashionista.setSobrenome("Golden");
        fashionista.setEmail("joazinho@gmail.com");
        fashionista.setBairro("Centro");
        fashionista.setComplemento("Casa");
        fashionista.setLogradouro("Francisco de Assis");
        fashionista.setMunicipio("Macaé");
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        Date data = null;
        try {
            data = format.parse("11/03/1999");
        } catch (ParseException ex) {
            System.err.println("VELHO, escreve a data direito, seu mala!");
        }
        fashionista.setData_nascimento(data);
        String sex = "M";
        fashionista.setSexo(sex.charAt(0));
        fashionista.setNumero(Integer.parseInt("164"));
        fashionista.setDdd(Integer.parseInt("22"));
        fashionista.setTipo_logradouro("Avenida");
        
        fashionista.setUf("RJ");

        FashionistaDAO fash = new FashionistaDAO();
        boolean funciona = false;
        try {
            funciona = fash.addFashionista(fashionista);
        } catch (HibernateException ex) {
            ex.printStackTrace();
            funciona = false;
        }
        
        if (funciona) {
            System.out.println("SIIIIIIIIIIIIIIIIIM!!!!");
        } else {
            System.out.println("NOOOOOO!");
        }
    }
}
