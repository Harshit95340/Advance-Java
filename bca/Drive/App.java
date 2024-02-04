package bca.Drive;

import java.sql.*;
import java.util.Scanner;

import bca.Model.Student;

public class App
{
	public static void main(String[] args) throws ClassNotFoundException, SQLException 
	{
		Scanner sc = new Scanner(System.in);
		Student s = new Student();
		System.out.println("Enter Your Choice (Any Other Number beside 1,2,3,4 means Exit\n1 -> View\n2 -> Insert\n3 -> Delete\n4 -> Update");
		int ch = sc.nextInt();
		
		switch (ch) 
		{
			case 1: 
			{
				s.Select();
				break;
			}
			case 2:
			{
				System.out.print("Enter The Details of the Student\nRoll = ");
				String roll = sc.next();
				System.out.print("Name = ");
				String name = sc.next();
				System.out.print("DOB (YYYY-MM-DD) = ");
				String date = sc.next();
				s.Insert(roll, name, date);
				break;
			}
			case 3:
			{
				System.out.println("Enter The Roll whose Details needs to be Deleted");
				String roll = sc.next();
				s.Delete(roll);
				break;
			}
			case 4:
			{
				System.out.println("Enter The Roll of the Student Whose Data needs to be Updated");
				String roll = sc.next();
				System.out.println("Present Details");
				s.Select_Specific(roll);
				System.out.print("\nEnter The Details To Be Updated (If Same Data Needs to be Kept for some field then Rewrite it as same\nName = ");
				String name = sc.next();
				System.out.print("DOB (YYYY-MM-DD) = ");
				String dob = sc.next();
				s.Update(roll, name, dob);
				System.out.println("\n-----New Data-----");
				s.Select_Specific(roll);
				break;
			}
			default:
				throw new IllegalArgumentException("Unexpected value: " + ch);
		}
		
	}
}