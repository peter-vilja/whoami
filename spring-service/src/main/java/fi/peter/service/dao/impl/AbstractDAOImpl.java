package fi.peter.service.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import fi.peter.service.dao.JpaDAO;


/**
 * Abstract implementation for DAO classes.
 * 
 * @author Peter Vilja
 * 
 */
public abstract class AbstractDAOImpl<T, ID extends Serializable> implements JpaDAO<T, ID> {

	@PersistenceContext
	private EntityManager entityManager;

	private Class<T> entityClass;

	@SuppressWarnings("unchecked")
	public AbstractDAOImpl() {
		entityClass = (Class<T>) ((ParameterizedType) (getClass()
				.getGenericSuperclass())).getActualTypeArguments()[0];
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void persist(T e) {
		getEntityManager().persist(e);
	}

	public void merge(T e) {
		getEntityManager().merge(e);
	}

	public T findById(ID id) {
		return getEntityManager().find(entityClass, id);

	}

	@SuppressWarnings("unchecked")
	public Collection<T> findAll() {
		Query query = getEntityManager().createQuery(
				"SELECT e FROM " + entityClass.getSimpleName() + " e");
		return query.getResultList();
	}

	public void remove(T entity) {
		getEntityManager().remove(entity);
	}
}