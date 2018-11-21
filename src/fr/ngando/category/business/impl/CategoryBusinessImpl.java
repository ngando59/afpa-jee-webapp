package fr.ngando.category.business.impl;

import java.util.List;

import fr.ngando.category.business.ICategoryBusiness;
import fr.ngando.category.dao.ICategoryDao;
import fr.ngando.category.dao.impl.CategoryDaoImpl;
import fr.ngando.category.domain.Category;

public class CategoryBusinessImpl implements ICategoryBusiness {

	private static final ICategoryDao iCategoryDao = new CategoryDaoImpl();
	
	@Override
	public List<Category> findAll() {
		List<Category> categories = iCategoryDao.findAll();
		return categories;
	}

	@Override
	public Category findOneById(Integer id) {
		Category category = iCategoryDao.findOneById(id);
		return category;
	}

	@Override
	public Category findOneByTag(String tag) {
		Category category = iCategoryDao.findOneByTag(tag);
		return category;
	}

}
