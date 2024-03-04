package backend.user;

import java.util.ArrayList;

import backend.database.Database;
import backend.dog.Dog;
import backend.poster.Poster;



public class User {
	
	private Dog preferredDog;
	
	private String username;
	
	private String email;
	
	private int userID;
	
	private String password;
	
	private Wallet wallet;
	
	private ArrayList<Dog> likedDogs = new ArrayList<Dog>();
	
	private ArrayList<Dog> passedDogs = new ArrayList<Dog>();
	

	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public User(String username, String email, String password) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	/*
	 * For adding and for removing attribute/tag preferences
	 */
	public Dog getDog() {
		return preferredDog;
	}
	
	public void setDog(Dog dog) {
		this.preferredDog = dog;
		
	}
	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Wallet getWallet() {
		return wallet;
	}

	public void setWallet(Wallet wallet) {
		this.wallet = wallet;
	}

	public ArrayList<Dog> getLikedDogs() {
		return likedDogs;
	}

	public void addLikedDogs(Dog likedDog) {
		System.out.println(",dog name liek: "+ likedDog.getName()+ ",dog id like: " + likedDog.getId());
		likedDogs.add(likedDog);
	}
	
	public ArrayList<Dog> getPassedDogs() {
		return passedDogs;
	}

	public void addPassedDogs(Dog likedDog) {
		System.out.println(",dog name pass: "+ likedDog.getName()+ ",dog id  pass: " + likedDog.getId());
		passedDogs.add(likedDog);
	}
	
	@Override
	public String toString() {
		return "User [username=" + username + ", email=" + email + ", password="
				+ password + "]";
	}
}
