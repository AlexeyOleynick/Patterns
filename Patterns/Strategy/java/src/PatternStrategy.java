import heroes.Hawkeye;
import heroes.Hero;
import heroes.ShillenKnight;
import heroes.SpellSinger;
import weapons.BowWeaponBehavior;


public class PatternStrategy {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Hero magican = new SpellSinger();
		Hero archer = new Hawkeye();
		Hero tank = new ShillenKnight();
		
		tank.attack();
		tank.setWeapon(new BowWeaponBehavior());
		tank.attack();
		
		archer.attack();
		magican.attack();
	
	}

}
