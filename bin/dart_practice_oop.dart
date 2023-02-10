
void main() {

    Student s1=Student(name: 'Gobinda', mobile: 8347478, nid: 737,email: '3u847y47');
    Student s2=Student(name: 'Niloy', mobile: 8347478, nid: 73467);
    Student s3=Student(name: 'Tanzir', mobile: 8347478, nid: 7474,);


    Department d1=Department(departmentName: 'CSE', id: '18244', batch: '34');
    Department d2=Department(departmentName: 'EEE', id: '18244', batch: '36');
    Department d3=Department(departmentName: 'CBSE', id: '18244', batch: '30');

    s1.department=d1;
    s2.department=d2;
    s3.department=d3;


s1.courselist=[
  Course(cName:"Andropiid", cCradit: 292.3, cCode: "343"),
  Course(cName:"Ios", cCradit: 92.3, cCode: "340"),
  Course(cName:"Flutter", cCradit: 9.3, cCode: "343"),

];
s1.courselist=[
  Course(cName:"Andropiid", cCradit: 292.3, cCode: "343"),
  Course(cName:"Ios", cCradit: 92.3, cCode: "340"),
  Course(cName:"Flutter", cCradit: 9.3, cCode: "343"),

];
s2.courselist=[
  Course(cName:"AMobile", cCradit: 292.3, cCode: "343"),
  Course(cName:"Ios", cCradit: 92.3, cCode: "340"),
  Course(cName:"Flutter", cCradit: 9.3, cCode: "343"),

];
s3.courselist=[
  Course(cName:"English", cCradit: 292.3, cCode: "343"),
  Course(cName:"Ios", cCradit: 92.3, cCode: "340"),
  Course(cName:"Flutter", cCradit: 9.3, cCode: "343"),

];





    final studentlist=[s1,s2,s3];
   for(var stu in studentlist){
     int serial=1;
   print(stu.name);
   print('-------------');
   for(var course in stu.courselist!){
     print('$serial. ${course.cName} - ${course.cCradit} - ${course.cCode}');
     serial ++;
   }
   print("\n");

   }




}

class Student{

   String? name;
   int? mobile;
   int? nid;

   Department? department;//one to  one realation
   List<Course>? courselist;// one to  many association

   String? _email;//private


   Student({required this.name,
     this.mobile,
     required this.nid,
     this.department,
     this.courselist,

     String? email, }) :assert(nid! >0),this._email=email;



  getInfo()=> '$name $mobile $nid';

}


class Department{

  String departmentName;
  String id;
  String batch;

  List<Student>? student;// many to one association realation

  Department({required this.departmentName, required this.id,required  this.batch});
}


class Course{
String cName;
double cCradit;
String cCode;

Course({ required this.cName, required this.cCradit,required this.cCode}):assert(cCradit>0.0);
}

