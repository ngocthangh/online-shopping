package com.ngocthangh.shoppingbackend.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ngocthangh.shoppingbackend.dao.CategoryDAO;
import com.ngocthangh.shoppingbackend.dto.Category;

public class CategoryTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private Category category;
	
	@BeforeClass
	public static void init(){
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.ngocthangh.shoppingbackend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
//	@Test
//	public void testAddCategory(){
//		category = new Category();
//		category.setName("Television");
//		category.setDescription("This is some description for television");
//		category.setImageURL("CAT_1.png");
//		assertEquals("Successfully added a category inside the table!", true, categoryDAO.add(category));
//	}
	
//	@Test
//	public void testGetCategory(){
//		category = categoryDAO.get(1);
//		assertEquals("Successfully get a single category", "Television", category.getName());
//	}
	
//	@Test
//	public void testUpdateCategory(){
//		category = categoryDAO.get(1);
//		category.setName("TiVi");
//		assertEquals("Successfully update a single category", true, categoryDAO.update(category));
//	}
	
//	@Test
//	public void testDeleteCategory(){
//		category = categoryDAO.get(1);
//		assertEquals("Successfully delete a single category", true, categoryDAO.delete(category));
//	}
	
	@Test
	public void testListCategory(){
		assertEquals("Successfully get list categorys", 4, categoryDAO.list().size());
	}
}
