package com.ngocthangh.shoppingbackend.dto;

import java.util.List;

import com.ngocthangh.shoppingbackend.dao.Category;

public interface CategoryDAO {
	List<Category> list();
	Category get(int id);
}
