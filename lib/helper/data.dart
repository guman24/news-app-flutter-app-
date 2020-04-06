import 'package:newsapp/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = new List<CategoryModel>();

  CategoryModel categoryModel;

  //first category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'business';
  categoryModel.imageURL =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80';
  category.add(categoryModel);

  //second category
  categoryModel=CategoryModel();
  categoryModel.categoryName="entertainment";
  categoryModel.imageURL="https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //third category
  categoryModel=CategoryModel();
  categoryModel.categoryName="general";
  categoryModel.imageURL="https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //fourth category
  categoryModel=CategoryModel();
  categoryModel.categoryName="science";
  categoryModel.imageURL="https://images.unsplash.com/photo-1574170609519-d1d8d4b71f60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  //fifth categroy
  categoryModel=CategoryModel();
  categoryModel.categoryName="health";
  categoryModel.imageURL="https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80";
  category.add(categoryModel);

  //sixth category
  categoryModel=new CategoryModel();
  categoryModel.categoryName="sports";
  categoryModel.imageURL="https://images.unsplash.com/photo-1541252260730-0412e8e2108e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  //seventh category
  categoryModel=CategoryModel();
  categoryModel.categoryName="technology";
  categoryModel.imageURL="https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  return category;

}
