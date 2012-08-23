package fi.peter.service.dao.impl;

import org.springframework.stereotype.Repository;

import fi.peter.service.dao.HelloDAO;
import fi.peter.service.domain.Item;

@Repository
public class HelloDAOImpl extends AbstractDAOImpl<Item, Long> implements HelloDAO {

}
