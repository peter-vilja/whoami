package fi.peter.service.service.impl;

import java.io.Serializable;
import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import fi.peter.service.dao.JpaDAO;
import fi.peter.service.service.CRUDService;


/**
 * Abstract implementation for CRUD services.
 * 
 * @author Peter Vilja
 * 
 */
@Transactional
public abstract class AbstractCRUDServiceImpl<T, ID extends Serializable> implements CRUDService<T, ID> {

	private JpaDAO<T, ID> dao;

	public AbstractCRUDServiceImpl(JpaDAO<T, ID> dao) {
		this.dao = dao;
	}

	public T findById(ID id) {
		return this.dao.findById(id);
	}

	public Collection<T> findAll() {
		return this.dao.findAll();
	}

	public void persist(T e) {
		this.dao.persist(e);
	}
	
	public void merge(T e) {
		this.dao.merge(e);
	}

	public void remove(T e) {
		this.dao.remove(e);
	}
}