package fi.peter.service.service;

import java.util.Collection;

/**
 * Service interface with CRUD operations.
 * 
 * @author Peter Vilja
 * 
 */
public interface CRUDService<T, ID> {

	/**
	 * Finds entity by id.
	 * 
	 * @param id
	 * @return
	 */
	public T findById(ID id);

	/**
	 * Finds all entities.
	 * 
	 * @return
	 */
	public Collection<T> findAll();

	/**
	 * Creates a new entity or updates existing if exists.
	 * 
	 * @param e
	 */
	public void persist(T e);
	
	/**
	 * Updates entity in the database.
	 * 
	 * @param e
	 */
	public void merge(T e);

	/**
	 * Removes entity.
	 * 
	 * @param e
	 */
	public void remove(T e);
}