package fi.peter.service.dao;

import java.util.Collection;

/**
 * Generic interface for JPA.
 * 
 * @author Peter Vilja
 * 
 * @param <T, ID> Entity type.
 */
public interface JpaDAO<T, ID> {

	/**
	 * Creates a row into database.
	 * 
	 * @param e
	 */
	void persist(T e);

	/**
	 * Updates entity in the database.
	 * 
	 * @param e
	 */
	void merge(T e);

	/**
	 * Finds single entity by primary key.
	 * 
	 * @param id
	 * @return
	 */
	T findById(ID id);

	/**
	 * Finds all entities from the database.
	 * 
	 * @return
	 */
	Collection<T> findAll();

	/**
	 * Removes an entity from the database.
	 * 
	 * @param entity
	 */
	void remove(T entity);
}

