package heroes;

import weapons.interfaces.IWeaponBehavior;

public abstract class Hero {
	
	String name = "NoName";
	IWeaponBehavior currentWeapon;
	
	public Hero(){
	}
	
	public void setWeapon(IWeaponBehavior weapon){
		currentWeapon = weapon;
	}
	
	public void attack(){
		System.out.print(name + " attacked with: ");
		currentWeapon.performAttack();
	}
	
}
