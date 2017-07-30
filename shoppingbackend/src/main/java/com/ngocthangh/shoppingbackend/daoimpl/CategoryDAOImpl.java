package com.ngocthangh.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ngocthangh.shoppingbackend.dao.Category;
import com.ngocthangh.shoppingbackend.dto.CategoryDAO;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	static{
		Category category = new Category(1, "Television", "This is some description for television", "CAT_1.png", true);
		categories.add(category);
		category = new Category(2, "Mobile", "This is some description for telephone", "CAT_2.png", true);
		categories.add(category);
		category = new Category(3, "Laptop", "This is some description for mobile", "CAT_3.png", true);
		categories.add(category);
//		category = new Category(4, "Smart Phone", "This is some description for smart phone", "CAT_4.png", true);
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}
	@Override
	public Category get(int id) {
		for(Category category : categories){
			if(category.getId() == id){
				return category;
			}
		}
		return null;
	}

}
