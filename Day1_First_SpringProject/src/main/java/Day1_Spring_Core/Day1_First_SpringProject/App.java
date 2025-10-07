package Day1_Spring_Core.Day1_First_SpringProject;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.r3sys.SpringCore.Student;


public class App 
{
    public static void main( String[] args )
    {
    	
        System.out.println( "Hello World!" );
        ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        Student obj1 = (Student) context.getBean("Student1");
        System.out.println(obj1);
        
        Student obj2 = (Student) context.getBean("Student2");
        System.out.println(obj2);
        
        Student obj3 = (Student) context.getBean("Student3");
        System.out.println(obj3);
        
        Student obj4 = (Student) context.getBean("Student4");
        System.out.println(obj4);
    
    }
}
