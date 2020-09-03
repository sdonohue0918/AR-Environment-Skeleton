Student.destroy_all
Teacher.destroy_all

student1 = Student.create(first_name: "sean", last_name: "D", grade_level: "postgraduate", teacher_id: 3) #Assignment of teacher3.id does not work 
student2 = Student.create(first_name: "don", last_name: "J", grade_level: "postgraduate", teacher_id: 3)
student3 = Student.create(first_name: "wyclef", last_name: "J", grade_level: "postgraduate", teacher_id: 3)

teacher1 = Teacher.create(last_name: "Dr. Markley",grade_level: "postgraduate", years_of_experience: 90 )
teacher2 = Teacher.create(last_name: "Dr. Abadia",grade_level: "postgraduate", years_of_experience: 54 )
teacher3 = Teacher.create(last_name: "Ms. Best",grade_level: "postgraduate", years_of_experience: 1 )

# GradeLevel.create(student_id: 1, teacher_id: 3)

##<Teacher::ActiveRecord_Associations_CollectionProxy:0x3fc36d8ebd5c> WTF?