# OO Practice - Freaks and Geeks

You need to model a high school, with a class named `HighSchool`.

When you instantiate a high school, you pass it the capacity.

You add students to a `high_school` by calling the `enroll` method:

```ruby
high_school = HighSchool.new(34)
high_school.vacancies # => 34
high_school.enroll("Lindsay Weir")
high_school.vacancies # => 33
```

After a student is enrolled, the `students` method should return an array of the students who were enrolled:

```ruby
high_school.students # => returns ["Lindsay Weir", "Sam Weir", "Daniel Desario"]
```

Some students drop out, and when they do, they are removed from the `students`, and added to the `drop_outs`:

```ruby
high_school.enroll("Lindsay Weir")
high_school.enroll("Daniel Desario")
high_school.students # => ["Lindsay Weir", "Daniel Desario"]
high_school.drop_out("Daniel Desario")
high_school.dropped_out #=> ["Daniel Desario"]
high_school.students #=> ["Lindsay Weir"]
```

Some students graduate, and when they do, they are removed from the `students`, and added to the `alumni`:

```ruby
high_school.enroll("Lindsay Weir")
high_school.enroll("Daniel Desario")
high_school.students # => ["Lindsay Weir", "Daniel Desario"]
high_school.graduate("Lindsay Weir")
high_school.alumni #=> ["Lindsay Weir"]
high_school.students #=> ["Daniel Desario"]
```

### Freaks and Geeks extra

* Only use a single instance variable in the HighSchool class and use a single hash to store all the data internally
* Use a single array to track students, but model each student as a hash
* Use a single array to track students, but model each student as an instance of a Student class
