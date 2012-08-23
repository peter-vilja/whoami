package fi.peter.service.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fi.peter.service.dao.HelloDAO;
import fi.peter.service.domain.Item;
import fi.peter.service.service.HelloService;

@Service
public class HelloServiceImpl extends AbstractCRUDServiceImpl<Item, Long> implements HelloService {

	@Autowired
	public HelloServiceImpl(HelloDAO dao) {
		super(dao);
	}

}
