# test_driven_desgin_clean_architecture

1. What about the usecases of domain layer?

The usecases in domain layer holds files in the folder. Each of the file is responsible for doing one job. You may a file create_user.dart just for create user and get_users.dart for getting users from the server.

Each class will hold one single method and this method would reach out to the repository of the domain layer.


2. Why we put interface DataSource and DataSourceImpl in the same file?

I don't think that would be okay since each feature has it's own datasource interface and also it's own datasource implementation, putting them in the core folder will confuse us when we have a lot of features, you'll have to sift through many files before you find the particular datasource interface you're looking for, that's why they stay in the same data layer as their implementation, now, about separating them, yeah, you could totally separate the interface and the implementation, you could do that, there's no problem with it, but since it's short and also lives in the same layer as it's implementation, I didn't see any need to separate them, it doesn't defeat the open-close principle, since the abstract class itself is closed for modification, but still open for extension, you could have more than one data source implementation files still extending the same data source interface, in that case, I'd advice putting it in different files, but again, my reason is because it's short in my case and it's only one other implementation, else I'd have split them into multiple files.


3. Difference between APIException and APIFailure

That would be great, but a failure is different than an exception, an exception is "throwable", but a failure is not throwable, think of it this way, whenever we have an exception, we can use the exception, but after we receive the exception, we convert it into a friendlier form, which is a failure, a failure is a dart object we've created, it's a normal class that contains some information about the error, but it's not the same as a throwable, they serve two different purposes, you can try doing throw ServerFailure(), and see it won't work, because it's not a "throwable", normally after you catch exceptions, you don't keep using them in your UI, so in our case, we catch it and create a failure to be used by our UI because it's UI friendly .


4. Do we need to test only side, Left or Right?

Yes, only need to test one hand, either right or left, your choice, the reason for this is because we will still test the repository for both success and failure, the same in the remote data source, and also in our bloc, so those tests will cover for it,

The real reason for a usecase is just to connect the domain to the data layer, and as such, the only necessary test will be to check if that call to the repository was made indeed. We only do the right or left answer just to make sure that call works, then finally we verify that the call was even made in the first place.
