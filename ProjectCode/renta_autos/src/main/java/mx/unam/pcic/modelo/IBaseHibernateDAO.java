package mx.unam.pcic.modelo;

import org.hibernate.Session;

/**
 * 
 * @author Gabriel Gonzalez
 *
 */
public interface IBaseHibernateDAO {
	public Session getSession();
}
